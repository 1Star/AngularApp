class Phone < ActiveRecord::Base
	has_many :phone_images, :dependent => :destroy

	def as_json(options = {})
		if options[:mode] == 'list'
			super({only: [:id, :name, :age, :display], include: { phone_images: {only: :url}} } )
		else
			super(include: {phone_images: {only: :url}})
		end
	end
end
