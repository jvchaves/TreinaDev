require 'csv'
puts 'Processador de Faturas'

file = File.read('./date/nubank-2020-03.csv')
#puts file
csv = CSV.parse(file,headers: true)

csv.each do |row|
   expense = row.to_h
   category_file_path = "./categories/#{expense['category']}.csv"
   category_file = File.open(category_file_path, "a+")
   if File.empty?(category_file)
        category_file.puts csv.headers.join(',')
   end
   category_file.write row
   category_file.close
end