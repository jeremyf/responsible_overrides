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
end

TheirEngine::Model.prepend(TheirEngine::ModelDecorator)