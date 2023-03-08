class CreateOpenedMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :opened_moves do |t|
      t.text :number_first_poin
      t.integer :x_coordinate_first_point
      t.integer :y_coordinate_first_point
      t.text :number_second_poin
      t.integer :x_coordinate_second_point
      t.integer :y_coordinate_second_point

      t.timestamps
    end
  end
end
