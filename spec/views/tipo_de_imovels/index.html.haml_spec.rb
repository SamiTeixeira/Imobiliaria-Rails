require 'rails_helper'

RSpec.describe "tipo_de_imovels/index", :type => :view do
  before(:each) do
    assign(:tipo_de_imovels, [
      TipoDeImovel.create!(
        :descricao => "Descricao",
        :tipoDeContrato => "Tipo De Contrato",
        :valor => 1.5
      ),
      TipoDeImovel.create!(
        :descricao => "Descricao",
        :tipoDeContrato => "Tipo De Contrato",
        :valor => 1.5
      )
    ])
  end

  it "renders a list of tipo_de_imovels" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo De Contrato".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
