#!/usr/bin/env ruby
require_relative './app'
require_relative './selector'

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
  selector = Selector.new(app)
  while main_menu
    print main_menu
    main_option = gets.chomp
    break if main_option == '7'

    selector.selected(main_option)
  end
end

main
