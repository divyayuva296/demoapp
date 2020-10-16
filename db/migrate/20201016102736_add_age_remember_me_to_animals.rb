class AddAgeRememberMeToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :age, :string
    add_column :animals, :remenber_me, :boolean
  end
end
