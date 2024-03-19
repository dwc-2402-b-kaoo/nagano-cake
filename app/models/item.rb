class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items, dependent: :destroy 
  has_many :order_details, dependent: :destroy
  
  with_options presence: true do
    validates :name
    validates :introduction
    validates :price
    validates :is_active
  end
  
  has_one_attached :item_image
  
  def get_item_image
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      item_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
  item_image
  end
  
end
