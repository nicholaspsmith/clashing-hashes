require_relative '../lib/follower_clash'

describe FollowerClash::Comparer do
  describe "#compare" do
    context 'when user 1 has more followers' do
      it 'should return user1' do
        user1 = double("user1")
        user2 = double("user2")

        allow(user1).to receive(:followers).and_return(10)
        allow(user2).to receive(:followers).and_return(1)

        expect(FollowerClash::Comparer.new(user1, user2).compare).to eq(user1)
      end
    end

    context 'when user 1 and user 2 have the same number of followers'
      it 'should return ...'
    end
  end
end