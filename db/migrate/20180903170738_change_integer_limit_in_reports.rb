class ChangeIntegerLimitInReports < ActiveRecord::Migration[5.0]
  def change
    change_column :reports, :pdl_id, :integer, limit: 30
    change_column :reports, :pdl_id_second, :integer, limit: 30
    change_column :reports, :pdl_id_second, :integer, limit: 30
    change_column :reports, :starting_index, :integer, limit: 30
    change_column :reports, :starting_index_second, :integer, limit: 30
  end
end
