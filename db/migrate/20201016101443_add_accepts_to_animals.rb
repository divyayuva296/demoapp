class AddAcceptsToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :accepts, :string
  end
end
