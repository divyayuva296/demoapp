class AddDateToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :date, :datetime
  end
end
