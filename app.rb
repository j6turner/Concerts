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
  @venue = Venue.create({ :name => name })
  redirect("/bands/#{id}")
end

post("/venues") do
  name = params.fetch("name")
  @venue = Venue.new({:name => name}).save()
  redirect("/")
end
