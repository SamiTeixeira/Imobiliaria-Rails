require 'rails_helper'

RSpec.describe "imovels/show", :type => :view do
  before(:each) do
    @imovel = assign(:imovel, Imovel.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
