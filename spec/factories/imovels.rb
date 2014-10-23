# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :imovel do
    endereco "MyString"
    area 1.5
    quarto ""
    sala ""
    cozinha "MyString"
    banheiro "MyString"
    areaExterna 1.5
    areaDeServico 1.5
    garagem ""
    tipo_de_imovel nil
    proprietario nil
  end
end
