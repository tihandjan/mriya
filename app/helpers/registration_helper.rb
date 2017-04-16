module RegistrationHelper
    def errors_for(model, attribute)
        if model.errors[attribute].present?
            attrib = attribute.to_s.capitalize.split('_').join(' ')
            content_tag :div, :class => 'alert alert-danger', style: 'padding: 8px' do
               attrib + ' ' + model.errors[attribute].join(", ")
            end
        end
    end
end