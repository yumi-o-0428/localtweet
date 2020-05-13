require 'rails_helper'
describe User do
  describe '#create' do

    it "name、email、passwordが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "nameが空の場合は登録できないこと" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailが空の場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "passwordが空の場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it " 重複したemailが存在する場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it " paswordが6文字以上であれば登録できること " do
      user = build(:user, password: "000000")
      user.valid?
      expect(user).to be_valid
    end

    it " passwordが5文字以下であれば登録できないこと " do
      user = build(:user, password: "00000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end

  end
end