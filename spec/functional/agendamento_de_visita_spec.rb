# coding: utf-8

require 'rails_helper'
feature 'Manage Agendamento de Visita' do
  before :each do
    @imovel = create(:imovel, endereco: 'campos', area: 1.0, quarto: 1, sala: 1, cozinha: 1,
                      banheiro: 1, areaExterna: 1, areaDeServico: 2, garagem: 3)
    @usuario = create(:usuario, nome: 'Saul', endereco: 'campos', cpf: '123.234.678-99', telefone:'232323', email:'saul@google.com')
  end

  scenario 'include Agendamento de Visita' do # , :js => true do
    visit new_agendamento_de_visita_path
    fill_and_verify_agendamento_de_visita
  end

  scenario 'edit Agendamento de Visita' do #, :js => true do
    agendamento_de_visita = create(:agendamento_de_visita, data: Date.today, hora: '1', usuario: @usuario, imovel: @imovel)
    visit edit_agendamento_de_visita_path(agendamento_de_visita)
    fill_and_verify_agendamento_de_visita
  end

  scenario 'delete Agendamento de Visita' do #, :javascript => true do
    create(:agendamento_de_visita, data: Date.today, hora: '1', usuario: @usuario, imovel: @imovel)
    visit agendamento_de_visitas_path
    click_link 'Destroy'
  end

  def fill_and_verify_agendamento_de_visita
    fill_in 'Hora', with: '1'
    select @imovel.endereco, from: 'Imovel'
    select @usuario.nome, from: 'Usuario'

    click_button 'Save'

    expect(page).to have_content('Data: ' + Date.today.to_s)
    expect(page).to have_content('Hora: 1')
    expect(page).to have_content('Imovel: ' + @imovel.endereco)
    expect(page).to have_content('Usuario: ' + @usuario.nome)
  end
end
