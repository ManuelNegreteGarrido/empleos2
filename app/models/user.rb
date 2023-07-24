class User < ApplicationRecord
  enum :role, [:normal_user, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :positions_users
  # has_many :positions, through: :positions_users
  has_and_belongs_to_many :positions
  # , join_table: :positions_users
  has_one_attached :image
  # validates :image, presence: true
end