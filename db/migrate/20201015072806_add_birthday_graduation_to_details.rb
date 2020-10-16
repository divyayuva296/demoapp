class AddBirthdayGraduationToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :birthday, :datetime
    add_column :details, :graduation, :date
  end
end
