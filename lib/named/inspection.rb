module Named
  module Inspection
    # implementation from: http://stackoverflow.com/a/2818916/4376
    def inspect_object_id
      "0x%x" % (object_id << 1)
    end
  end
end
