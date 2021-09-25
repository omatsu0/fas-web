class IconImage < ApplicationRecord
  belongs_to :profile
  attachment :icon_image
end
