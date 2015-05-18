class User < ActiveRecord::Base
		include ActiveModel::Validations
        attr_accessor :name, :age, :state

  validates :name, presence: true
  validates :age, presence: true
   validates :state, presence: true
 def self.get_users_by(state)
 	self.where(state: state).pluck(:name)
end


end
