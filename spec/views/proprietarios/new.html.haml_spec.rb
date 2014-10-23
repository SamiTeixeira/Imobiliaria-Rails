require 'rails_helper'

RSpec.describe "proprietarios/new", :type => :view do
  before(:each) do
    assign(:proprietario, Proprietario.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new proprietario form" do
    render

    assert_select "form[action=?][method=?]", proprietarios_path, "post" do

      assert_select "input#proprietario_nome[name=?]", "proprietario[nome]"

      assert_select "input#proprietario_endereco[name=?]", "proprietario[endereco]"

      assert_select "input#proprietario_cpf[name=?]", "proprietario[cpf]"

      assert_select "input#proprietario_telefone[name=?]", "proprietario[telefone]"

      assert_select "input#proprietario_email[name=?]", "proprietario[email]"
    end
  end
end
