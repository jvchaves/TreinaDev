INSERIR_RECEITAS = 1
EXIBIR_RECEITAS = 2
SAIR = 3
def boas_vindas
    puts "Bem vindo ao  COOK BOOK Sua Rede Social de Receitas"
end
def menu()
    puts "[#{INSERIR_RECEITAS}] Para Cadastrar Uma Nova Receita"
    puts "[#{EXIBIR_RECEITAS}] Ver Todas as Receitas"
    puts "[#{SAIR}] Sair"
    print "Digite uma Opção: "

    return gets.to_i
end
def inserir_receitas()

    puts 'Digite o nome da receita: '
    nome = gets.chomp() 
    puts 'Digite o tipo da receita: '
    tipo = gets.chomp() 
    puts "Receita #{nome} cadastrada com sucesso!"
    return {nome: nome, tipo: tipo}
end
def visualizar_receitas(receitas)
    puts
    puts "======================= Receitas Cadastradas ======================="
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts "====================================================================="
end
def encerramento
    puts
    puts "Obrigado Por utilizar o CookBook, Até Mais!"
end

boas_vindas()
opcao = menu()
receitas = []
loop do
    if opcao == INSERIR_RECEITAS
        receitas << inserir_receitas

    elsif opcao == EXIBIR_RECEITAS
       puts visualizar_receitas(receitas)
    elsif opcao == SAIR
        break
    else
        puts
        puts 'Digite uma opção Valida!'
    end
    puts
    opcao = menu()
end
encerramento()