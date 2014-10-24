require 'rails_helper'

RSpec.describe "imovels/index", :type => :view do
  before(:each) do
    assign(:imovels, [
      Imovel.create!(
        :endereco => "Endereco",
        :area => 1.5,
        :quarto => 1,
        :sala => 2,
        :cozinha => 3,
        :banheiro => 4,
        :areaExterna => 1.5,
        :areaDeServico => 1.5,
        :garagem => 5,
        :tipo_de_imovel => nil,
        :proprietario => nil
      ),
      Imovel.create!(
        :endereco => "Endereco",
        :area => 1.5,
        :quarto => 1,
        :sala => 2,
        :cozinha => 3,
        :banheiro => 4,
        :areaExterna => 1.5,
        :areaDeServico => 1.5,
        :garagem => 5,
        :tipo_de_imovel => nil,
        :proprietario => nil
      )
    ])
  end

  it "renders a list of imovels" do
    render
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
