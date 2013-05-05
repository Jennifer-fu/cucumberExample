require "#{File.dirname(__FILE__)}/../../impl/pages/page.rb"
Dir["#{File.dirname(__FILE__)}/../../impl/**/*.rb"].each do |file|
    require file
end

include Navigation