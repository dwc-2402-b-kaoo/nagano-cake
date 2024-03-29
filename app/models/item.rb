class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy

  with_options presence: true do
    validates :name
    validates :introduction
    validates :price
  end

  has_one_attached :item_image

  def get_item_image(width, height)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      item_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
  item_image
  end

  ## 消費税を求めるメソッド
  def with_tax_price
      (price * 1.1).floor
  end

end
