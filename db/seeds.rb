# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

apartments = [
    {
        street: '1 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '2000',
        bedrooms: 2,
        bathrooms: 1.5,
        pets: 'pets under 50 lb only'
    },
    {
        street: '3 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '1500',
        bedrooms: 1,
        bathrooms: 1.5,
        pets: 'no pets allowed'
    },
    {
        street: '3 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '1200',
        bedrooms: 1,
        bathrooms: 1.0,
        pets: 'no pets allowed'
    },
    {
        street: '3 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '2500',
        bedrooms: 2,
        bathrooms: 2.0,
        pets: 'all pets welcome'
    },
    {
        street: '1 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '2200',
        bedrooms: 1,
        bathrooms: 1.5,
        pets: 'no pets allowed'
    },
    {
        street: '1 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '3000',
        bedrooms: 3,
        bathrooms: 2.0,
        pets: 'pets under 50 lb only'
    },
    {
        street: '5 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '1300',
        bedrooms: 1,
        bathrooms: 1.0,
        pets: 'no dogs'
    },
    {
        street: '5 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '3500',
        bedrooms: 3,
        bathrooms: 1.5,
        pets: 'no pets allowed'
    },
    {
        street: '5 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '2500',
        bedrooms: 2,
        bathrooms: 1.0,
        pets: 'all pets welcome'
    },
    {
        street: '3 Main Street',
        city: 'Towson',
        state: 'MD',
        manager: 'Bob',
        email: 'bob@testing.com',
        price: '1500',
        bedrooms: 1,
        bathrooms: 1.5,
        pets: 'all pets welcome'
    }
]

first_user = User.first

apartments.each do |attribute|
    first_user.apartments.create attribute 
end