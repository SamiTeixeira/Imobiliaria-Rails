# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :propostum do
    valor 1.5
    status "MyString"
    imovel nil
    usuario nil
  end
end
