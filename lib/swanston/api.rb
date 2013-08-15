module Swanston
  class Api < Sinatra::Base

    get "/" do
      " { \"true\": \"false\" } "
    end
  end
end
