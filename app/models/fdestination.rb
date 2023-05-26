# == Schema Information
#
# Table name: fdestinations
#
#  id         :integer          not null, primary key
#  country    :string
#  mode       :string
#  place      :string
#  state      :string
#  ttime      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fdestination < ApplicationRecord
end
