module Named
  class Module < ::Module
    include Naming

    def initialize(name, &block)
      super(&block)
      self.name = name
    end

    # @returns [String] NamedModule:CustomName:0x00123abc
    def to_s
      [self.class.name, name, inspect_object_id].join(':')
    end
  end
end
