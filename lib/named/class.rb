module Named
  module Class
    include Naming

    def self.new(name, superclass = Object, &block)
      ::Class.new(superclass, &block).tap do |klass|
        klass.extend(ClassMethods)
        klass.send(:include, self)
        klass.name = name
      end
    end

    module ClassMethods
      include Naming

      def to_s
        [Named::Class, superclass, name, inspect_object_id].join(':')
      end
    end

    def to_s
      "#<#{self.class}:#{inspect_object_id}>".sub(":#{self.class.inspect_object_id}", '')
    end
  end
end
