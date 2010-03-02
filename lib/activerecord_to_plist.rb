module ActiveRecord #:nodoc:
  module Serialization

    def to_plist(options = nil) 
      hash = Serializer.new(self, options).serializable_record
      hash.to_plist
    end

    def from_plist(plist)
      self.attributes = Plist::parse_xml(plist)
      self
    end
  end
end
