class Category
    initialize(name)
        @file = CategoryFile.new(name)
    end

    def add_expense(expense)
        @file.add_expense(expense)
    end

    def expenses()
        
    end
end