require 'data_mapper'
require 'sinatra'

require 'swanston/api'

module Swanston

  def self.setup(settings)
    #DataMapper.setup(:default, settings['DATABASE_URL'] || "sqlite://#{Dir.pwd}/development.sqlite")
  end

  def self.app
    Rack::Builder.app do
      map "/" do
        run Swanston::Api
      end
    end
  end
end
