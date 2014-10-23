require 'rails_helper'

RSpec.describe "tipo_de_imovels/show", :type => :view do
  before(:each) do
    @tipo_de_imovel = assign(:tipo_de_imovel, TipoDeImovel.create!(
      :descricao => "Descricao",
      :tipoDeContrato => "Tipo De Contrato",
      :valor => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Tipo De Contrato/)
    expect(rendered).to match(/1.5/)
  end
end
