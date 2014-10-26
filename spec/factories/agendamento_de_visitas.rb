# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agendamento_de_visita do
    data "2014-10-24"
    hora "MyString"
    imovel nil
    usuario nil
  end
end
