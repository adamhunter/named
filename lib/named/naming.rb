module Named
  module Naming
    attr_accessor :name

    def inspect_object_id
      "0x00%x" % (object_id << 1)
    end
  end
end
