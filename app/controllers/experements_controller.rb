class ExperementsController < ApplicationController
  # GET /experements
  def index
    device = request.headers["Device-Token"]

    user_device = UserDevice.find_or_create_by(device_id: device)

    experements = Experement.includes(:experement_options).where('created_at <= ?', user_device.first_request_at)

    options_for_device = experements.map do |experement|
      device_option = DeviceExperimentOption.find_or_initialize_by(device_id: device, experement_id: experement.id)

      if device_option.new_record?
        device_option.experement_option = experement.random_option
        device_option.save!
      end

      {
        experiment_id: experement.id,
        experiment_name: experement.name,
        assigned_option: device_option.experement_option.option,
        assigned_value: device_option.experement_option.value
      }
    end

    render json: options_for_device
  end
end
