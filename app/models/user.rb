class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 devise :database_authenticatable, :recoverable,
         :registerable, :rememberable, :trackable, :validatable
 # , :omniauthable
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :addresses
  # accepts_nested_attributes_for :addresses
#   def name
#   email.split('@')[0]
# end

# validates :name, presence: true, length: { maximum: 15 }
validates :nickname, presence: true, length: { maximum: 10 }

# validates :zipcode, presence: true
# validates :prefecture_name, presence: true
# validates :city, presence: true
# validates :street, presence: true

  # def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  #   user = User.where(:provider => auth.provider, :uid => auth.uid).first
  #   unless user
  #     user = User.create(name:     auth.extra.raw_info.name,
  #                        provider: auth.provider,
  #                        uid:      auth.uid,
  #                        email:    auth.info.email,
  #                        password: Devise.friendly_token[0,20]
  #                       )
  #   end
  #   user
  # end



end