defmodule Weather.MeasurementView do
  use Weather.Web, :view

  def render("index.json", %{measurements: measurements}) do
    %{data: render_many(measurements, Weather.MeasurementView, "measurement.json")}
  end

  def render("show.json", %{measurement: measurement}) do
    %{data: render_one(measurement, Weather.MeasurementView, "measurement.json")}
  end

  def render("measurement.json", %{measurement: measurement}) do
    %{id: measurement.id,
      temperature: measurement.temperature,
      humidity: measurement.humidity,
      mac_address: measurement.mac_address}
  end
end
