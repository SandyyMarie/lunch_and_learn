require 'rails_helper'

RSpec.describe AirQuality do
  it 'has attributes' do
    data = {
    "coord": {
        "lon": 77,
        "lat": 22
    },
    "list": [
        {
            "main": {
                "aqi": 4
            },
            "components": {
                "co": 393.87,
                "no": 0,
                "no2": 3,
                "o3": 67.95,
                "so2": 2.77,
                "pm2_5": 33.3,
                "pm10": 38.05,
                "nh3": 11.91
            },
            "dt": 1668532338
        }
    ]
}

    new_aq = AirQuality.new(data)

    expect(new_aq.id).to eq(nil)
    expect(new_aq.type).to eq('air_quality')
    expect(new_aq.aqi).to eq(4)
    expect(new_aq.datetime).to eq(1668532338)
    expect(new_aq.readable_aqi).to eq("Poor")
  end
end