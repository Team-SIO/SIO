# == Schema Information
#
# Table name: favs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  favs_count :integer
#

class Fav < ApplicationRecord
  belongs_to :user
  belongs_to :item,counter_cache: :favs_count
end
