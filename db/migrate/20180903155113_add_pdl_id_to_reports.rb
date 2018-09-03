class AddPdlIdToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :ending_index_second, :integer
    add_column :reports, :pdl_id, :integer
    add_column :reports, :pdl_id_second, :integer
    add_column :reports, :starting_index_second, :integer
    add_column :reports, :power_consumption_second, :integer
    add_column :reports, :starting_date_second, :date
    add_column :reports, :ending_date_second, :date
  end
end
