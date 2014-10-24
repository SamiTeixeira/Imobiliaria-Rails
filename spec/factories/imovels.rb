# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :imovel do
    endereco "MyString"
    area 1.5
    quarto 1
    sala 1
    cozinha 1
    banheiro 1
    areaExterna 1.5
    areaDeServico 1.5
    garagem 1
    tipo_de_imovel nil
    proprietario nil
  end
end
