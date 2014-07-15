require 'active_support/inflector'

class Jsonite

  module Helper
    module_function

    def resource_name resource
      if resource.respond_to? :model_name
        resource.model_name.collection
      elsif resource.class.respond_to? :model_name
        resource.class.model_name.singular
      else
        resource.class.name.underscore
      end
    end

  end

end
