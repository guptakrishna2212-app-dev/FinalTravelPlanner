# == Schema Information
#
# Table name: likes
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  destination_id :integer
#  user_id        :integer
#
class Like < ApplicationRecord

  belongs_to(:destination, {
    :class_name => "Destination",
    :foreign_key => "destination_id"
  })
  
end
