class Selector
  def initialize(app)
    @app = app
  end

  def selected(option)
    case option
    when '1'
      @app.list_all_books
    when '2'
      @app.list_all_people
    when '3'
      @app.create_person
    when '4'
      @app.create_book
    when '5'
      @app.create_rental
    when '6'
      @app.list_all_rentals
    else
      print "Please enter a valid option: \n\n"
    end
  end
end
