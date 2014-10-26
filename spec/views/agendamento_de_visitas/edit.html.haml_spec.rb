require 'rails_helper'

RSpec.describe "agendamento_de_visitas/edit", :type => :view do
  before(:each) do
    @agendamento_de_visita = assign(:agendamento_de_visita, AgendamentoDeVisita.create!(
      :hora => "MyString",
      :imovel => nil,
      :usuario => nil
    ))
  end

  it "renders the edit agendamento_de_visita form" do
    render

    assert_select "form[action=?][method=?]", agendamento_de_visita_path(@agendamento_de_visita), "post" do

      assert_select "input#agendamento_de_visita_hora[name=?]", "agendamento_de_visita[hora]"

      assert_select "input#agendamento_de_visita_imovel_id[name=?]", "agendamento_de_visita[imovel_id]"

      assert_select "input#agendamento_de_visita_usuario_id[name=?]", "agendamento_de_visita[usuario_id]"
    end
  end
end
