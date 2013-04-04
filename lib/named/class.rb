module Named
  module Class
    def self.new(name, superclass = Object, &block)
      ::Class.new(superclass, &block).tap do |klass|
        klass.extend(self) # adds support for is_a?
        klass.extend(ClassMethods)
        klass.send(:include, InstanceMethods)
        klass.name = name
      end
    end

    module ClassMethods
      include Inspection, Naming

      def to_s
        [Named::Class, superclass, name, inspect_object_id].join(':')
      end
    end

    module InstanceMethods
      include Inspection

      def to_s
        "#<#{self.class}:#{inspect_object_id}>".sub(":#{self.class.inspect_object_id}", '')
      end
    end
  end
end
