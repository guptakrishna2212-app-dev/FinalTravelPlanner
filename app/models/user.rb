# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  likes_count     :integer
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord

  validates(:username,
  {
    :presence => true,
    :uniqueness => {:case_sensitive => false}
  }
  )

  has_secure_password

  has_many(:likes, {
    :class_name => "Like",
    :foreign_key => "user_id"
  })

  has_many(:destinationsthroughlike, {
    :through => :likes,
    :source => :destination
  })
  
end
