require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) do
    User.create email: 'me@test.com', password: '567890', password_confirmation: '567890'
  end

# index test
describe "GET /index" do
  it 'gets all the apartments' do
    Apartment.create street: '1 Main Street', city: 'Towson', state: 'MD', manager: 'Jeff', email: 'jeff@email.com', price: '1000', bedrooms: 2, bathrooms: 2.0, pets: 'no', user_id: user.id

    get '/apartments'

    apartments = JSON.parse(response.body)
    expect(apartments.length).to eq 1
    expect(response).to have_http_status(200)

    apartment = apartments.first
    expect(apartment['street']).to eq '1 Main Street'
    expect(apartment['city']).to eq 'Towson'
    expect(apartment['state']).to eq 'MD'
    expect(apartment['manager']).to eq 'Jeff'
    expect(apartment['email']).to eq 'jeff@email.com'
  end
end
end
