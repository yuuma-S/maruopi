
# RSpec.describe "EndUser", type: :model do
#     it "ユーザーを登録するとname,email,passwordが取得できる" do
# 		end_user = EndUser.new(
# 			name: "テスト太郎",
# 			email: "test@tarou",
# 			password: "123456"
# 		)
# 		expect(end_user).to be_valid
#     end
# end

RSpec.describe '四則演算' do
  describe '足し算' do
    it '1 + 1 は 2 になること' do
      expect(1 + 1).to eq 2
    end
  end
  describe '引き算' do
    it '10 - 1 は 9 になること' do
      expect(10 - 1).to eq 9
    end
  end
end