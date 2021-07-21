require 'csv'
require_relative './lib/category_file.rb'
require_relative './lib/file_processor.rb'
puts 'Processador de Faturas'
FileProcessor.new('./date/nubank-2021-07.csv').process