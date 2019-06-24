require "pessoa"

describe "Atributos" do
  before(:all) do
    puts ">>>>>>>>>> ANTES de TODOS os testes"
  end

  after(:context) do
    puts ">>>>>>>>>> DEPOIS de TODOS os testes"
  end

  # before(:each) do
  #   puts "ANTES"
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS >>>>>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts "ANTES"
    @pessoa = Pessoa.new

    teste.run

    @pessoa.nome = "Sem nome!"
    puts "DEPOIS >>>>>>>>> #{@pessoa.inspect}"
  end

  it "have_attributes" do
    @pessoa.nome = "Jackson"
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end

  it "have_attributes" do
    @pessoa.nome = "Jose"
    @pessoa.idade = 25

    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
  end
end
