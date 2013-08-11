class User < ActiveRecord::Base
	has_many :tweets

	def full_name 
		fname+ " " +lname
	end 

	def location
		city+ ", " +state
	end 

	attr_accessor :password
	before_save :encrypt_password

	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :email
	validates_uniqueness_of :email
	validates_uniqueness_of :username

	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end 
	end

	def self.authenticate(username, password)
		user = User.find_by_username(username)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else 
			nil 
		end
	end 

	mount_uploader :image, ImageUploader

	scoped_search :on => [:fname, :lname, :username]

end