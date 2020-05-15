require 'rails_helper'
describe Tweet do
  describe '#create' do

    it "spa_name、area、spring_quality、imageが存在すれば登録できること" do
      tweet = build(:tweet)
      expect(tweet).to be_valid
    end

    it "spa_nameが空の場合は登録できないこと" do
      tweet= build(:tweet, spa_name: "")
      tweet.valid?
      expect(tweet.errors[:spa_name]).to include("を入力してください")
    end

    it "areaが空の場合は登録できないこと" do
      tweet= build(:tweet, area: "")
      tweet.valid?
      expect(tweet.errors[:area]).to include("を入力してください")
    end

    it "spring_qualityが空の場合は登録できないこと" do
      tweet= build(:tweet, spring_quality: "")
      tweet.valid?
      expect(tweet.errors[:spring_quality]).to include("を入力してください")
    end

    it "imageが空の場合は登録できないこと" do
      tweet= build(:tweet, image: "")
      tweet.valid?
      expect(tweet.errors[:image]).to include("を入力してください")
    end

  end
end