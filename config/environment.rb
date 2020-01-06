require 'bundler/setup'
Bundler.require

require_relative '../app/application'

:console => :environment do
  Pry.start
end

end
