require 'rails_helper'

RSpec.describe "usuarios/new", :type => :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_endereco[name=?]", "usuario[endereco]"

      assert_select "input#usuario_cpf[name=?]", "usuario[cpf]"

      assert_select "input#usuario_telefone[name=?]", "usuario[telefone]"

      assert_select "input#usuario_email[name=?]", "usuario[email]"
    end
  end
end
