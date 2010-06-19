include Mongo

if ENV['MONGOHQ_URL']
  MongoMapper.config = {ENV['RACK_ENV'] => {'uri' => ENV['MONGOHQ_URL']}}
else
  MongoMapper.config = {ENV['RACK_ENV'] => {'uri' => "mongodb://localhost/#{@db_name}"}}
end
MongoMapper.connect(ENV['RACK_ENV'])
