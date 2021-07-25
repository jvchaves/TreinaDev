require 'csv'
require_relative './lib/expense'
require_relative './lib/category'
require_relative './lib/category_file'
require_relative './lib/file_processor'
require 'fileutils'

DATA_DIR = "#{__dir__}/data"

puts 'Processador de Faturas'

Dir.each_child(DATA_DIR).each do |fileName|
    file = FileProcessor.new("./data/#{fileName}")
    file.process()
    FileUtils.mv("./data/#{fileName}","./old/")
end

