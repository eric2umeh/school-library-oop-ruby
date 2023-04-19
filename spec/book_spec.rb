require_relative '../book.rb'
require_relative '../rental.rb'
require_relative '../student.rb'

describe Book do 
    context 'When testing the Book class' do
        before :each do
            @book = Book.new('Davinci Code', 'Dan Brown')
            @person = Person.new(age:'25', name:'Howard', parent_permission:true)
            @mock_rental = Rental.new(date: '2020-01-01', book: @book, person: @person)
        end

        it 'it is initialized as an instance of Book' do
          expect(@book).to be_an_instance_of Book
          expect(@book).to have_attributes(title: 'Davinci Code') 
          expect(@book).to have_attributes(author: 'Dan Brown')
        end

        it 'adds a rental to the rentals array when called' do
            @book.add_rental(@mock_rental)
            expect(@book).to respond_to('add_rental')
            expect(@book.rentals[0]).to eq @mock_rental
        end
    end
end
