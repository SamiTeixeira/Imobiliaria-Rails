require 'rails_helper'

RSpec.describe "imovels/index", :type => :view do
  before(:each) do
    assign(:imovels, [
      Imovel.create!(
        :endereco => "Endereco",
        :area => 1.5,
        :quarto => "",
        :sala => "",
        :cozinha => "Cozinha",
        :banheiro => "Banheiro",
        :areaExterna => 1.5,
        :areaDeServico => 1.5,
        :garagem => "",
        :tipo_de_imovel => nil,
        :proprietario => nil
      ),
      Imovel.create!(
        :endereco => "Endereco",
        :area => 1.5,
        :quarto => "",
        :sala => "",
        :cozinha => "Cozinha",
        :banheiro => "Banheiro",
        :areaExterna => 1.5,
        :areaDeServico => 1.5,
        :garagem => "",
        :tipo_de_imovel => nil,
        :proprietario => nil
      )
    ])
  end

  it "renders a list of imovels" do
    render
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Cozinha".to_s, :count => 2
    assert_select "tr>td", :text => "Banheiro".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
