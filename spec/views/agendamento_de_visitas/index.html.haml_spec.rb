require 'rails_helper'

RSpec.describe "agendamento_de_visitas/index", :type => :view do
  before(:each) do
    assign(:agendamento_de_visitas, [
      AgendamentoDeVisita.create!(
        :hora => "Hora",
        :imovel => nil,
        :usuario => nil
      ),
      AgendamentoDeVisita.create!(
        :hora => "Hora",
        :imovel => nil,
        :usuario => nil
      )
    ])
  end

  it "renders a list of agendamento_de_visitas" do
    render
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
