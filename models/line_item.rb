class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :shop
end
