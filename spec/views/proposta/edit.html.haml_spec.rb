require 'rails_helper'

RSpec.describe "proposta/edit", :type => :view do
  before(:each) do
    @propostum = assign(:propostum, Propostum.create!(
      :valor => 1.5,
      :status => "MyString",
      :imovel => nil,
      :usuario => nil
    ))
  end

  it "renders the edit propostum form" do
    render

    assert_select "form[action=?][method=?]", propostum_path(@propostum), "post" do

      assert_select "input#propostum_valor[name=?]", "propostum[valor]"

      assert_select "input#propostum_status[name=?]", "propostum[status]"

      assert_select "input#propostum_imovel_id[name=?]", "propostum[imovel_id]"

      assert_select "input#propostum_usuario_id[name=?]", "propostum[usuario_id]"
    end
  end
end
