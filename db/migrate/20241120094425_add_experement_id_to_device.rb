class AddExperementIdToDevice < ActiveRecord::Migration[7.2]
  def change
    add_column :device_experiment_options, :experement_id, :integer, null: false
  end
end
