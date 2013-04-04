require 'spec_helper'

describe Named::Inspection do
  let(:subject) { Class.new.extend(described_class) }

  it "properly formats object ids" do
    _, hex_object_id = subject.inspect_object_id.split('x')
    expect(subject.inspect).to include hex_object_id
  end
end
