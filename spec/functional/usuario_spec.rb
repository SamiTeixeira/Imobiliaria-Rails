# coding: utf-8
require 'rails_helper'
feature 'Manage Usuario' do



scenario 'include Usuario' do # , :js => true do
	visit new_usuario_path
	fill_and_verify_usuario
end


scenario 'edit Usuario' do #, :js => true do
	usuario = FactoryGirl.create(:usuario)
	visit edit_usuario_path(usuario)
	fill_and_verify_usuario
end


scenario 'delete Usuario' do #, :javascript => true do
	usuario = FactoryGirl.create(:usuario)
	visit usuarios_path
	click_link 'Destroy'
end


def fill_and_verify_usuario
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