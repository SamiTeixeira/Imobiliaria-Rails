require 'rails_helper'

RSpec.describe "agendamento_de_visitas/show", :type => :view do
  before(:each) do
    @agendamento_de_visita = assign(:agendamento_de_visita, AgendamentoDeVisita.create!(
      :hora => "Hora",
      :imovel => nil,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hora/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
