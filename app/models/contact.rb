class Contact

	attr_accessor :name, :email, :phone, :message, :file
	extend ActiveSupport::Concern
    include ActiveModel::Validations
    include ActiveModel::Conversion

    included do
      extend ActiveModel::Naming
      extend ActiveModel::Translation
    end

    def initialize(params={})
      params.each do |attr, value|
        self.public_send("#{attr}=", value)
      end if params

      super()
    end

   

	
end
