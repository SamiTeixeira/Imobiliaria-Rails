require 'rails_helper'

RSpec.describe "tipo_de_imovels/new", :type => :view do
  before(:each) do
    assign(:tipo_de_imovel, TipoDeImovel.new(
      :descricao => "MyString",
      :tipoDeContrato => "MyString",
      :valor => 1.5
    ))
  end

  it "renders new tipo_de_imovel form" do
    render

    assert_select "form[action=?][method=?]", tipo_de_imovels_path, "post" do

      assert_select "input#tipo_de_imovel_descricao[name=?]", "tipo_de_imovel[descricao]"

      assert_select "input#tipo_de_imovel_tipoDeContrato[name=?]", "tipo_de_imovel[tipoDeContrato]"

      assert_select "input#tipo_de_imovel_valor[name=?]", "tipo_de_imovel[valor]"
    end
  end
end
