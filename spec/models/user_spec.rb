require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  it 'is valid with all the properties' do
    expect(users(:bob)).to be_valid
  end

end
