class ProductVariation < ActiveRecord::Base
  store :properties, accessor: [:color, :size]
end
