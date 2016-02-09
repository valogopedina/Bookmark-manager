require 'rubygems'
require 'data_mapper'

class Link
  include DataMapper::Resource

  property :id,         Serial
  property :title,      String
  property :url,        String
end

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://localhost/datamapper_play')

DataMapper.finalize
DataMapper.auto_upgrade!