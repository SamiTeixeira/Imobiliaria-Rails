# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tipo_de_imovel do
    descricao "MyString"
    tipoDeContrato "MyString"
    valor 1.5
  end
end
