class Picture < ApplicationRecord
  belongs_to :room, optional: true

end
