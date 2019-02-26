require 'rails_helper'

RSpec.describe User, type: :model do
  let (:subject){:bob}

  it 'is valid with all the properties' do
    expect(subject).to be_valid
  end

end
