# coding: utf-8
require 'rails_helper'
feature 'Manage Tipo de Imobilia' do



scenario 'include Tipo de Imobilia' do # , :js => true do
	visit new_tipo_de_imovel_path
	fill_and_verify_tipo_de_imovel
end


scenario 'edit Tipo de Imobilia' do #, :js => true do
	tipo_de_imovel = FactoryGirl.create(:tipo_de_imovel)
	visit edit_tipo_de_imovel_path(tipo_de_imovel)
	fill_and_verify_tipo_de_imovel
end


scenario 'delete Tipo de Imobilia' do #, :javascript => true do
	tipo_de_imovel = FactoryGirl.create(:tipo_de_imovel)
	visit tipo_de_imovels_path
	click_link 'Destroy'
end


def fill_and_verify_tipo_de_imovel
	fill_in 'Descricao', :with => "casa"
	fill_in 'Tipodecontrato', :with => "venda"
	fill_in 'Valor', :with => 200500


	click_button 'Save'

	expect(page).to have_content 'Descricao: casa'
	expect(page).to have_content 'Tipodecontrato: venda'
	expect(page).to have_content 'Valor: 200500'

end


end
