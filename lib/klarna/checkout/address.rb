module Klarna
  module Checkout
    class Address < Resource
      attr_accessor :given_name, :family_name, :care_of, :street_address,
                    :postal_code, :city, :country, :email, :phone,
                    :reference, :organization_name

      def as_json
        json_sanitize({
          :given_name     => @given_name,
          :family_name    => @family_name,
          :care_of        => @care_of,
          :street_address => @street_address,
          :postal_code    => @postal_code,
          :city           => @city,
          :country        => @country,
          :email          => @email,
          :phone          => @phone,
          :reference	  => @reference,
          :organization_name => @organization_name
        })
      end
    end
  end
end
