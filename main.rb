#!/usr/bin/env ruby
require_relative './app'

def main
  main_menu =
    "\nPlease choose an option:
    1. List all books
    2. List all people
    3. Create a person
    4. Create a book
    5. Create a rental
    6. List all rentals for a given Person ID
    7. Exit\n"
  app = App.new
  while main_menu
    print main_menu
    main_option = gets.chomp
    break if main_option == '7'

    selected_option(main_option, app)
  end
end

def selected_option(option, app)
  case option
  when '1'
    app.list_all_books
  when '2'
    app.list_all_people
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    app.create_rental
  when '6'
    app.list_all_rentals
  else
    print "Please enter a valid option: \n\n"
  end
end

main
