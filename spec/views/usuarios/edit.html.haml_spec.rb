require 'rails_helper'

RSpec.describe "usuarios/edit", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_endereco[name=?]", "usuario[endereco]"

      assert_select "input#usuario_cpf[name=?]", "usuario[cpf]"

      assert_select "input#usuario_telefone[name=?]", "usuario[telefone]"

      assert_select "input#usuario_email[name=?]", "usuario[email]"
    end
  end
end
