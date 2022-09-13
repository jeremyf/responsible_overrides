require "spec_helper"

RSpec.describe TheirEngine::Model do
  context ".engine_class_behavior_to_override" do
    subject { described_class.engine_class_behavior_to_override }
    it { is_expected.to eq [:override, :engine_class_behavior_to_override] }
  end

  context ".engine_class_behavior_to_sustain" do
    subject { described_class.engine_class_behavior_to_sustain }
    it { is_expected.to eq :engine_class_behavior_to_sustain }
  end

  context "#engine_instance_behavior_to_override" do
    subject { described_class.new.engine_instance_behavior_to_override }
    it { is_expected.to eq [:override, :engine_instance_behavior_to_override] }
  end

  context "#engine_instance_behavior_to_sustain" do
    subject { described_class.new.engine_instance_behavior_to_sustain }
    it { is_expected.to eq :engine_instance_behavior_to_sustain }
  end
end