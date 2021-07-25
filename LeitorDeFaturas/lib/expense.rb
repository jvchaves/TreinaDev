class Expense
    attr_reader  :date, :title, :amount

    def initialize(args)
        @date  = args['date']
        @title  = args['title']
        @category  = args['category']
        @amount  = args['amount']
    end

    def category()
        return @category if @category
       
        amount().to_f.positive? ? 'juros_multa' : 'pagamentos'
    end
end