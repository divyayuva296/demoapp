class AddPasswordToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :password, :password
  end
end
