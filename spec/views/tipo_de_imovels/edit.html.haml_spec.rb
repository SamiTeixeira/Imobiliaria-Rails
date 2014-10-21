require 'rails_helper'

RSpec.describe "tipo_de_imovels/edit", :type => :view do
  before(:each) do
    @tipo_de_imovel = assign(:tipo_de_imovel, TipoDeImovel.create!(
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_de_imovel form" do
    render

    assert_select "form[action=?][method=?]", tipo_de_imovel_path(@tipo_de_imovel), "post" do

      assert_select "input#tipo_de_imovel_descricao[name=?]", "tipo_de_imovel[descricao]"
    end
  end
end
