require 'rails_helper'

RSpec.describe "proprietarios/edit", :type => :view do
  before(:each) do
    @proprietario = assign(:proprietario, Proprietario.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit proprietario form" do
    render

    assert_select "form[action=?][method=?]", proprietario_path(@proprietario), "post" do

      assert_select "input#proprietario_nome[name=?]", "proprietario[nome]"

      assert_select "input#proprietario_endereco[name=?]", "proprietario[endereco]"

      assert_select "input#proprietario_cpf[name=?]", "proprietario[cpf]"

      assert_select "input#proprietario_telefone[name=?]", "proprietario[telefone]"

      assert_select "input#proprietario_email[name=?]", "proprietario[email]"
    end
  end
end
