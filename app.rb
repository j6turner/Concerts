require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end


post("/bands") do
  name = params.fetch("name")
  @band = Band.new({ :name => name }).save()
  redirect("/")
end

get("/bands/:id") do
  @band = Band.find(params.fetch("id").to_i())
  @bands = Band.all()
  @venues = @band.venues()
  erb(:bands)
end

post("/venues/:id") do
  venues = params.fetch("name")
  id = params.fetch("id").to_i()
  @venue = Venue.create({ :name => name, :id => id })
  redirect("/bands/#{id}")
end

get("/venues") do
  @venues = Venue.all()
  id = Band.find(params.fetch("id").to_i())
  erb(:bands)
end


post("/venues") do
  name = params.fetch("name")
  id = params.fetch("id").to_i()
  @venue = Venue.new({:name => name}).save()
  redirect("/bands/#{id}")
end

patch("/venues/:id") do
  venue_id = params.fetch("id").to_i()
  @venue = Venue.find(venue_id)
  band_ids = params.fetch("band_ids")
  @venue.update({:venue_ids => venue_ids})
  @bands = Band.all()
  redirect("/bands/#{id}")
end
