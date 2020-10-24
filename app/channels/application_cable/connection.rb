
require 'mongo'

Mongo::Logger.logger.level = ::Logger::FATAL

client = Mongo::Client.new("mongodb+srv://movember-user:hack4humanity@aheadofthegame-cluster.213ik.mongodb.net/sample_restaurants")
db = client.database

collection = client[:restaurants]

puts collection.find( { name: 'Regina Caterers' } ).first


