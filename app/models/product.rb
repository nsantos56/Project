class Product < ActiveRecord::Base
  validates :title , :price , :stock_quantity , presence: true
  validates :price , numericality: {greater_thatn_or_equal_to: 0.01}
  validates :stock_quantity,  numericality: {only_integer: true}
end
