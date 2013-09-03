module Named
  module Naming
    
    # rubinius 2.0 doesn't seem to like using attr_accessor for
    # name, I'm guessing because of a naming conflict with @name
    def name=(n)
      @named_name = n
    end
    
    def name
      @named_name
    end
    
  end
end
