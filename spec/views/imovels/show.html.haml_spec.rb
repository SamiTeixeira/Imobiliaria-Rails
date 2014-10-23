require 'rails_helper'

RSpec.describe "imovels/show", :type => :view do
  before(:each) do
    @imovel = assign(:imovel, Imovel.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Cozinha/)
    expect(rendered).to match(/Banheiro/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
