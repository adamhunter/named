require 'spec_helper'

describe Named::Class do
  let(:subject) { Named::Class.new("Spec Class") { attr_accessor :foo } }

  it "is a module" do
    expect(Named::Class).to be_a(Module)
  end

  it "is a Named::Class" do
    expect(subject).to be_a(Named::Class)
  end

  describe "class creation" do
    it "has the provided code block as its body" do
      expect(subject.new).to respond_to(:foo)
    end
  end

  describe "classes" do
    describe "to_s" do
      it "starts with Named::Class" do
        expect(subject.to_s).to start_with 'Named::Class'
      end

      it "includes the given module name" do
        expect(subject.to_s).to include("Spec Class")
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

  describe "instances" do
    let(:instance) { subject.new }

    it "is not a Named::Class" do
      expect(instance).not_to be_a(Named::Class)
    end

    it "does not have a name accessor" do
      expect(instance).not_to respond_to(:name)
    end

    describe "to_s" do
      it "starts with Named::Class" do
        expect(instance.to_s).to start_with '#<Named::Class'
      end

      it "includes the given module name" do
        expect(instance.to_s).to include("Spec Class")
      end

      it "ends with the properly formatted object id" do
        expect(instance.to_s).to end_with("#{instance.inspect_object_id}>")
      end
    end

    describe "inspect" do
      it "is the same as to_s" do
        expect(instance.to_s).to eq instance.inspect
      end
    end
  end
end
