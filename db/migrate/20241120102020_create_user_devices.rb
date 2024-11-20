class CreateUserDevices < ActiveRecord::Migration[7.2]
  def change
    create_table :user_devices do |t|
      t.string :device_id
      t.datetime :first_request_at

      t.timestamps
    end
  end
end
