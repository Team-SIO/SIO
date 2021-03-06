# == Schema Information
#
# Table name: order_items
#
#  id               :integer          not null, primary key
#  order_id         :integer
#  item_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  order_price      :integer
#  order_item_count :integer
#  item_name        :string
#  item_info        :text
#  price            :integer
#

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
  mount_uploader :image, ImageUploader
end
