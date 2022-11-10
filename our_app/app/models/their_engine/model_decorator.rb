module TheirEngine
  module ModelDecorator
    extend ActiveSupport::Concern

    class_methods do
      def engine_class_behavior_to_override
        [:override, super]
      end
    end

    def engine_instance_behavior_to_override
      [:override, super]
    end
  end

  module ModelBehaviorDecorator
   extend ActiveSupport::Concern

    class_methods do
      def engine_class_behavior_to_override_via_module
        [:override, super]
      end
    end

    def engine_instance_behavior_to_override_via_module
      [:override, super]
    end
  end
end

# TheirEngine::ModelBehavior is a module we include in a class; we cannot include a module into a
# module so we need to use this pattern of "When we include the module in the class, also include
# another module".
module TheirEngine::ModelBehavior
  extend ActiveSupport::Concern
  included do
    include TheirEngine::ModelBehaviorDecorator
  end
end

TheirEngine::Model.prepend(TheirEngine::ModelDecorator)
