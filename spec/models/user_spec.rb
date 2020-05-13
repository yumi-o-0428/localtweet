require 'rails_helper'
describe User do
  describe '#create' do
    it "nameが空の場合は登録できないこと" do
      user = User.new(name: "", email: "aaa@gmail.com", password: "000000")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
  end
end