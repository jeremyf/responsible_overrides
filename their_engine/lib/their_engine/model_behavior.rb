module TheirEngine
  module ModelBehavior
    extend ActiveSupport::Concern

    class_methods do
      def engine_class_behavior_to_override
        :engine_class_behavior_to_override
      end

      def engine_class_behavior_to_sustain
        :engine_class_behavior_to_sustain
      end
    end

    def engine_instance_behavior_to_override
      :engine_instance_behavior_to_override
    end

    def engine_instance_behavior_to_sustain
      :engine_instance_behavior_to_sustain
    end
  end
end