TOP_LEFT_LAT = 42.37
TOP_LEFT_LNG = -71.12
KEY = File.read('key')

def get(i, j, span, size)
  lat = TOP_LEFT_LAT + ( span * i )
  lng = TOP_LEFT_LNG + ( span * j )
  url = "http://maps.google.com/staticmap?center=#{lat},#{lng}&span=#{span},#{span}&size=#{size}x#{size}&key=#{KEY}&sensor=false"
  arg = "\"#{url}\""
  cmd = "wget #{arg} -O #{i}-#{j}.jpg"

  puts cmd
  `#{cmd}`
end

5.times do |i|
  5.times do |j|
    span = 0.02
    size = 640
    get(i, j, span, size)
  end
end
