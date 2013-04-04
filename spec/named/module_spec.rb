require 'spec_helper'

describe Named::Module do

  let(:subject) { Named::Module.new("Spec Module") { attr_accessor :foo } }

  it "is a class" do
    expect(Named::Module).to be_a(Class)
  end

  describe "module creation" do
    before(:each) { subject.extend(subject) }

    it "has the provided code block as its body" do
      expect(subject).to respond_to(:foo)
    end
  end

  describe "to_s" do
    it "starts with Named::Module" do
      expect(subject.to_s).to start_with 'Named::Module'
    end

    it "includes the given module name" do
      expect(subject.to_s).to include("Spec Module")
    end

    it "ends with the properly formatted object id" do
      expect(subject.to_s).to end_with(subject.inspect_object_id)
    end
  end

  describe "inspect" do
    it "is the same as to_s" do
      expect(subject.to_s).to eq subject.inspect
    end
  end
end
