class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.date :incident_created_date
      t.string :assigned_to_user
      t.string :status
      t.integer :incident_number

      t.timestamps
    end
  end
end
