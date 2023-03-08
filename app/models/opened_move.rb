class OpenedMove < ApplicationRecord
  validates :number_first_poin, :x_coordinate_first_point, :y_coordinate_first_point, :number_second_poin, :x_coordinate_second_point, :y_coordinate_second_point, presence: true
end
