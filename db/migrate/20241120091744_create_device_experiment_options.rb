class CreateDeviceExperimentOptions < ActiveRecord::Migration[7.2]
  def change
    create_table :device_experiment_options do |t|
      t.integer :experement_option_id
      t.string :device_id
      t.timestamps
    end
  end
end
