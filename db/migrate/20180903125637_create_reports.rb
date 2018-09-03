class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.date :starting_date
      t.date :ending_date
      t.integer :starting_index
      t.integer :ending_index
      t.integer :power_consumption
      
      t.timestamps
      
    end
  end
end
