module ExperementsHelper
  def option_information(option, device_count)
    real_percentage = (option.devices.count * 100.0 / device_count).round(2)
    "<strong>#{option.option} (вес: #{option.value}):</strong> #{option.devices.count} устройств (#{real_percentage}%)".html_safe
  end
end
