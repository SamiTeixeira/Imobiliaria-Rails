# coding: utf-8
require 'rails_helper'
feature 'Manage Proprietario' do



scenario 'include Proprietario' do # , :js => true do
	visit new_proprietario_path
	fill_and_verify_proprietario
end


scenario 'edit Proprietario' do #, :js => true do
	proprietario = FactoryGirl.create(:proprietario)
	visit edit_proprietario_path(proprietario)
	fill_and_verify_proprietario
end


scenario 'delete Proprietario' do #, :javascript => true do
	proprietario = FactoryGirl.create(:proprietario)
	visit proprietarios_path
	click_link 'Destroy'
end


def fill_and_verify_proprietario
	fill_in 'Nome', :with => "Ana"
	fill_in 'Endereco', :with => "campos"
	fill_in 'Cpf', :with => "123.456.899-00"
	fill_in 'Telefone', :with => "23234456"
	fill_in 'Email', :with => "ana@gmail.com"


	click_button 'Save'

	expect(page).to have_content 'Nome: Ana'
	expect(page).to have_content 'Endereco: campos'
	expect(page).to have_content 'Cpf: 123.456.899-00'
	expect(page).to have_content 'Telefone: 23234456'
	expect(page).to have_content 'Email: ana@gmail.com'


end


end