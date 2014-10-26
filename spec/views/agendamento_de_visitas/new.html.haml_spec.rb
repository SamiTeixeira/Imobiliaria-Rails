require 'rails_helper'

RSpec.describe "agendamento_de_visitas/new", :type => :view do
  before(:each) do
    assign(:agendamento_de_visita, AgendamentoDeVisita.new(
      :hora => "MyString",
      :imovel => nil,
      :usuario => nil
    ))
  end

  it "renders new agendamento_de_visita form" do
    render

    assert_select "form[action=?][method=?]", agendamento_de_visitas_path, "post" do

      assert_select "input#agendamento_de_visita_hora[name=?]", "agendamento_de_visita[hora]"

      assert_select "input#agendamento_de_visita_imovel_id[name=?]", "agendamento_de_visita[imovel_id]"

      assert_select "input#agendamento_de_visita_usuario_id[name=?]", "agendamento_de_visita[usuario_id]"
    end
  end
end
