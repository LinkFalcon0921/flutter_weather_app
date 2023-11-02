enum WeatherType {
  sunny(['Clear']),
  windy(['Clouds', 'Mist', 'Smoke', 'Haze', 'Dust', 'Ash', 'Fog']),
  shower(['Drizzle']),
  rain(['Rain']),
  thunder(['Thunderstorm']),
  snow(['Snow']),
  missing(['missing']);

  const WeatherType(this.list);
  final List<String> list;

  @override
  String toString(){
    return name.toLowerCase();
  }
}
