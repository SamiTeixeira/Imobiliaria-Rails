require 'rails_helper'

RSpec.describe "usuarios/index", :type => :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :email => "Email"
      ),
      Usuario.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
