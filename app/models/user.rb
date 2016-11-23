class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :friendships
has_many :friends, :through => :friendships
has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
has_many :inverse_friends, :through => :inverse_friendships, :source => :user
<<<<<<< HEAD
has_one :profile
has_many :skills
=======

  has_many :conversations, :foreign_key => :sender_id
>>>>>>> e776dca... Add conversations to user model, routes
end
