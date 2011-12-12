module OnTheSpot
  module ControllerExtension

    def self.included(base)
      base.extend ClassMethods
    end

    # if this method is called inside a controller, the edit-on-the-spot
    # controller action is added that will allow to edit fields in place
    module ClassMethods 
      
      def can_edit_on_the_spot(check_access_method=nil)
        define_method :update_attribute_on_the_spot do
          klass, field, id = params[:id].split('__')
          select_data = params[:select_array]
          @object = klass.camelize.constantize.find(id)
          
          is_allowed = check_access_method.present? ? self.send(check_access_method, @object, field) : true

          if is_allowed
            if @object.update_attributes(field => params[:value])
              display_method = on_the_spot_getter_method_mapping[field.to_sym] || field
              val = @object.send(display_method).to_s
              if select_data.nil?
                render :text => CGI::escapeHTML(val)
              else
                parsed_data = JSON.parse(select_data.gsub("'", '"'))
                render :text => parsed_data[val]
              end
            else
              render :text => @object.errors.full_messages.join("\n"), :status => 422
            end
          else
            render :text => "Access is not allowed", :status => 422
          end
        end
      
        define_method :on_the_spot_getter_method_mapping do
          # override this method in a controller to set custom getter methods to use
          # when displaying the updated value for on_the_spot edits.
          # for example, if you want to display the Object#smurfed_at_in_words value
          # when the Object#smurfed_at field is updated, then return:
          #    { :smurfed_at => :smurfed_at_in_words }
          {}
        end
      end
    end
    
  end
end