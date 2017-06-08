module Klarna
  module Checkout
    class Customer < Resource
      attr_accessor :type, :organization_registration_id

      def as_json
        json_sanitize({
          :type => @type,
          :organization_registration_id => @organization_registration_id
        })
      end
    end
  end
end
