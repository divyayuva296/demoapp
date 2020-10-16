class AddMonthWeekEmailToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :month, :datetime
    add_column :details, :week, :string
    add_column :details, :email, :email
  end
end
