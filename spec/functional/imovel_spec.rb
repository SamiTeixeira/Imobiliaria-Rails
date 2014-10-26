# coding: utf-8

require 'rails_helper'
feature 'Manage Imovel' do
  before :each do
    @proprietario = create(:proprietario, nome: 'Saul', endereco: 'campos', cpf: '123.234.678-99', telefone:'232323', email:'saul@google.com')
    @tipo_de_imovel = create(:tipo_de_imovel, descricao: 'casa', tipoDeContrato: 'venda', valor:200000)
  end

  scenario 'include Imovel' do # , :js => true do
    visit new_imovel_path
    fill_and_verify_imovel
  end

  scenario 'edit Imovel' do #, :js => true do
    imovel = FactoryGirl.create(:imovel, :proprietario => @proprietario, :tipo_de_imovel => @tipo_de_imovel)
    visit edit_imovel_path(imovel)
    fill_and_verify_imovel
  end

  scenario 'delete Imovel' do #, :javascript => true do
    imovel = FactoryGirl.create(:imovel, :proprietario => @proprietario, :tipo_de_imovel => @tipo_de_imovel)
    visit imovels_path
    click_link 'Destroy'
  end

  def fill_and_verify_imovel
    fill_in 'Endereco', :with =>"campos"
    fill_in 'Area', :with => 80.5
    fill_in 'Quarto', :with => 1
    fill_in 'Sala', :with => 1
    fill_in 'Cozinha', :with => 1
    fill_in 'Banheiro', :with =>1
    fill_in 'Areaexterna', :with =>'30.5'
    fill_in 'Areadeservico', :with => 1
    fill_in 'Garagem', :with =>1

    select 'Saul', from: 'Proprietario'

    select 'casa', from: 'Tipo de imovel'
    click_button 'Save'

    expect(page).to have_content 'Endereco: campos'
    expect(page).to have_content 'Area: 80.5'
    expect(page).to have_content 'Quarto: 1'
    expect(page).to have_content 'Cozinha: 1'
    expect(page).to have_content 'Banheiro: 1'
    expect(page).to have_content 'Areaexterna: 30.5'
    expect(page).to have_content 'Areadeservico: 1.0'
    expect(page).to have_content 'Garagem: 1'
    expect(page).to have_content 'Proprietario: Saul'
    expect(page).to have_content 'Tipo de imovel: casa'

  end
end
