require 'rails_helper'

RSpec.describe "proposta/show", :type => :view do
  before(:each) do
    @propostum = assign(:propostum, Propostum.create!(
      :valor => 1.5,
      :status => "Status",
      :imovel => nil,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
