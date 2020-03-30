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

  describe 'POST #create' do
    context '正しい問題と解答が保存できた場合' do
      let(:params) do
        { qa: {
          body: '',
          content: '',
        }
      }
      end
      it '問題と解答がひとつ増えていること' do
        expect { post :create, params: params }.to change(Qa, :count).by(1)
      end
      
      it 'newページに飛べること' do
        expect(post :create, params: params).to redirect_to(action: :new)
      end  
    end  
  end  
end
