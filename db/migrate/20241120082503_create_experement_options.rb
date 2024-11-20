class CreateExperementOptions < ActiveRecord::Migration[7.2]
  def change
    create_table :experement_options do |t|
      t.integer :experement_id
      t.string :option
      t.string :value

      t.timestamps
    end
  end
end
