class Position < ApplicationRecord
    has_and_belongs_to_many :users
    # has_and_belongs_to_many :positions_users, class_name: 'User', join_table: :positions_users
end
