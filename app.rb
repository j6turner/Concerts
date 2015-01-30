require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands_all = Bands.all()
  @venues_all = Venues.all()
  erb(:index)
end

post("/bands") do
  band_name = params.fetch("band_name")
  Band.new({:name => band_name}).create()
  redirect("/")
end

post("/venues") do
  venue_name = params.fetch("venue_name")
  Venue.new({:name => venue_name}).create()
  redirect("/")
end
