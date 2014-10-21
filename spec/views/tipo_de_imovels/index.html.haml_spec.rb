require 'rails_helper'

RSpec.describe "tipo_de_imovels/index", :type => :view do
  before(:each) do
    assign(:tipo_de_imovels, [
      TipoDeImovel.create!(
        :descricao => "Descricao"
      ),
      TipoDeImovel.create!(
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_de_imovels" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
