require 'rails_helper'

RSpec.describe QasController, type: :controller do
  describe 'GET #new' do
    before { get :new }

    it 'レスポンスコードが200であること' do
      expect(response).to have_http_status(:ok)
    end
    
    it 'newテンプレートをレンダリングすること' do
      expect(response).to render_template :new
    end
    
    it '新しいqaオブジェクトがビューに渡されること' do
      expect(assigns(:qa)).to be_a_new Qa
    end  
  end  


end
