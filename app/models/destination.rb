# == Schema Information
#
# Table name: destinations
#
#  id          :integer          not null, primary key
#  country     :string
#  mode        :string
#  place_name  :string
#  state       :string
#  travel_time :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Destination < ApplicationRecord
end
