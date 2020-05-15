require 'rails_helper'
describe Tweet do
  describe '#create' do

    it "spa_name、area、spring_quality、imageが存在すれば登録できること" do
      tweet = build(:tweet)
      expect(tweet).to be_valid
    end
    
  end
end