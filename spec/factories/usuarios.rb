# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    endereco "MyString"
    cpf "MyString"
    telefone "MyString"
    email "MyString"
  end
end
