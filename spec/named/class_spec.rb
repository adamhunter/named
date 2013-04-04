require 'spec_helper'

describe Named::Class do
  it "is a module" do
    expect(Named::Class).to be_a(Module)
  end
end
