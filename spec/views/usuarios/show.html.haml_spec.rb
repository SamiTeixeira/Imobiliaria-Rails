require 'rails_helper'

RSpec.describe "usuarios/show", :type => :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cpf => "Cpf",
      :telefone => "Telefone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Email/)
  end
end
