class CreateExperements < ActiveRecord::Migration[7.2]
  def change
    create_table :experements do |t|
      t.string :name

      t.timestamps
    end
  end
end
