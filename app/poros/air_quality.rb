class AirQuality
  attr_reader :id, :type, :aqi, :datetime, :readable_aqi

  def initialize(data)
    @id = nil
    @type = "air_quality"
    @aqi = data[:list][0][:main][:aqi]
    @datetime = data[:list][0][:dt]
    @readable_aqi = aqi_translator(@aqi)
  end

  def aqi_translator(aqi)
    if aqi == 1
      return "Good"
    elsif aqi == 2
      return "Fair"
    elsif aqi == 3
      return "Moderate"
    elsif aqi == 4
      return "Poor"
    elsif aqi == 5
      return "Very Poor"
    end
  end
end