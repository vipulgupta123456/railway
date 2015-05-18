require 'rails_helper'

RSpec.describe User, :type => :model do
context 'validate user model' do 
it 'have no error' do
user = User.create(name: "vipul", age: '13',state: "ksd")
expect(user).to be_valid
end
it 'have one error on name' do
user = User.create(name:"vipul",age: '13',state: "ksd")
expect(user).to have(1).errors_on(:name)
end
it 'have one errors on school_name' do 
user = User.create(name:"vipul",age: '13',state: "ksd")	
expect(user).to have(1).errors_on(:state)
end	
end
context '#get user by' do 
it 'should return a particular user of a school'do 
user_1 = User.create(name:'ajay',age: '13',state: 'kdb')	
user_2 = User.create(name:'akshay',age: '13',state: 'kdb')	
user_3 = User.create(name:'amit',age: '13',state: 'kdb')
expected_user_result = ['ajay','akshay','amit']
real_result = User.get_users_by("kdb")
expect(real_result).to eq expected_user_result


end

end
end



