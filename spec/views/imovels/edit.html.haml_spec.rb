require 'rails_helper'

RSpec.describe "imovels/edit", :type => :view do
  before(:each) do
    @imovel = assign(:imovel, Imovel.create!(
      :endereco => "MyString",
      :area => 1.5,
      :quarto => 1,
      :sala => 1,
      :cozinha => 1,
      :banheiro => 1,
      :areaExterna => 1.5,
      :areaDeServico => 1.5,
      :garagem => 1,
      :tipo_de_imovel => nil,
      :proprietario => nil
    ))
  end

  it "renders the edit imovel form" do
    render

    assert_select "form[action=?][method=?]", imovel_path(@imovel), "post" do

      assert_select "input#imovel_endereco[name=?]", "imovel[endereco]"

      assert_select "input#imovel_area[name=?]", "imovel[area]"

      assert_select "input#imovel_quarto[name=?]", "imovel[quarto]"

      assert_select "input#imovel_sala[name=?]", "imovel[sala]"

      assert_select "input#imovel_cozinha[name=?]", "imovel[cozinha]"

      assert_select "input#imovel_banheiro[name=?]", "imovel[banheiro]"

      assert_select "input#imovel_areaExterna[name=?]", "imovel[areaExterna]"

      assert_select "input#imovel_areaDeServico[name=?]", "imovel[areaDeServico]"

      assert_select "input#imovel_garagem[name=?]", "imovel[garagem]"

      assert_select "input#imovel_tipo_de_imovel_id[name=?]", "imovel[tipo_de_imovel_id]"

      assert_select "input#imovel_proprietario_id[name=?]", "imovel[proprietario_id]"
    end
  end
end
