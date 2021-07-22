class FileProcessor
    attr_reader :file_path

    def initialize(file_path)
        @file_path = file_path
    end
    def process()
        file = File.read(file_path)
       
        csv = CSV.parse(file,headers: true)

        csv.each do |row|
            expense = row.to_h
            categoty = fetch_category(expense)
            CategoryFile.new(categoty).add_expense(row)
       
            
        end

    end    
    private
    def fetch_category(expense)
        return expense['category'] if expense['category']
       
        expense['amount'].to_f.positive? ? 'juros_multa' : 'pagamentos'
    end
end