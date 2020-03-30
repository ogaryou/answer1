require 'rails_helper'

RSpec.describe Qa, type: :model do
  describe '#create' do 
    context '問題文が作成されていない場合' do
      let(:qa) {Qa.new(body: nil, content:"0")}

      it '問題が作成されていないこと' do
        expect(qa.create[:body]).not_to eq(qa)
      end
    end
    context '解答が作成されていない場合' do
      let(:qa) {Qa.new(body:'1000-1000=?', content: nil)}

      it '解答が記入されてないこと' do
        expect(qa.create[:content]).not_to eq(qa)
      end
    end   
    context '問題文も解答も記入されている場合' do
      let(:qa) {Qa.new(body: '1000-1000=?', content: '0',user_id: "1")}
      
      it '問題文も解答も記入されていること' do
        expect(qa).to be_truthy
      end
    end    
  end      
  it "問題のタイトルを作成しないといけないよ" do
    qa =Qa.new(
      name: "数学の問題"
    )
  expect(qa.name).to eq "数学の問題" 
  end
  it "問題文を作成しないといけないよ" do
    qa =Qa.new(
      body: nil,
      content: "0",
      user_id: "1"
    )
    expect(qa).not_to eq(qa.create)
  end  
end
