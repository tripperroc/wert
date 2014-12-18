require 'delayed/worker'
Dir.glob("./app/jobs/*.rb").each { |f| require f }

