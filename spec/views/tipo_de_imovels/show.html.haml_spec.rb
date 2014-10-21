require 'rails_helper'

RSpec.describe "tipo_de_imovels/show", :type => :view do
  before(:each) do
    @tipo_de_imovel = assign(:tipo_de_imovel, TipoDeImovel.create!(
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
  end
end
