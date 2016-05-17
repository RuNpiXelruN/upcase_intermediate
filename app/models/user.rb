class User < ActiveRecord::Base
  has_many :shouts

  has_many :followed_user_relationships,
   foreign_key: :follower_id,
   class_name: 'FollowingRelationships'
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships,
    foreign_key: :followed_user_id,
    class_name: 'FollowingRelationships'
  has_many :followers, through: :follower_relationships


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
