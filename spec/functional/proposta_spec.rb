# coding: utf-8

require 'rails_helper'
feature 'Manage Proposta' do
  before :each do
    @imovel = create(:imovel, endereco: 'campos', area: 1.0, quarto: 1, sala: 1, cozinha: 1,
                      banheiro: 1, areaExterna: 1, areaDeServico: 2, garagem: 3)
    @usuario = create(:usuario, nome: 'Saul', endereco: 'campos', cpf: '123.234.678-99', telefone:'232323', email:'saul@google.com')
  end

  scenario 'include Proposta' do # , :js => true do
    visit new_propostum_path
    fill_and_verify_propostum
  end

  scenario 'edit Proposta' do #, :js => true do
    propostum = create(:propostum, valor:200.0, status:'pendente', usuario: @usuario, imovel: @imovel)
    visit edit_propostum_path(propostum)
    fill_and_verify_propostum
  end

  scenario 'delete Proposta' do #, :javascript => true do
    create(:propostum, valor:200, status:'pendente', usuario: @usuario, imovel: @imovel)
    visit proposta_path
    click_link 'Destroy'
  end

  def fill_and_verify_propostum
    fill_in 'Valor', with: 200.0
     fill_in 'Status', with: 'pendente'


    select @imovel.endereco, from: 'Imovel'
    select @usuario.nome, from: 'Usuario'

    click_button 'Save'

    expect(page).to have_content('Valor: 200')
    expect(page).to have_content('Status: pendente')
    expect(page).to have_content('Imovel: ' + @imovel.endereco)
    expect(page).to have_content('Usuario: ' + @usuario.nome)
  end
end
