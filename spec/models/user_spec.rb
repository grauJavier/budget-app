require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(
      name: 'Javier Grau',
      email: 'javier.grau@example.com',
      password: 'password123'
    )
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(email: 'javier.grau@example.com', password: 'password123')
    expect(user).not_to be_valid
  end

  it 'is not valid without an email' do
    user = User.new(name: 'Javier Grau', password: 'password123')
    expect(user).not_to be_valid
  end

  it 'is not valid without a unique email' do
    # Create a user with a specific email first
    User.create(name: 'Javier Grau', email: 'javier.grau@example.com', password: 'password123')

    # Try to create another user with the same email
    user = User.new(name: 'Another User', email: 'javier.grau@example.com', password: 'anotherpassword')
    expect(user).not_to be_valid
  end

  it 'is not valid if name is too long' do
    user = User.new(
      name: 'ThisNameIsTooLongToBeValidated',
      email: 'javier.grau@example.com',
      password: 'password123'
    )
    expect(user).not_to be_valid
  end
end
