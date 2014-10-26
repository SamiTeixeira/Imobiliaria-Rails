require 'rails_helper'

RSpec.describe "proposta/index", :type => :view do
  before(:each) do
    assign(:proposta, [
      Propostum.create!(
        :valor => 1.5,
        :status => "Status",
        :imovel => nil,
        :usuario => nil
      ),
      Propostum.create!(
        :valor => 1.5,
        :status => "Status",
        :imovel => nil,
        :usuario => nil
      )
    ])
  end

  it "renders a list of proposta" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
