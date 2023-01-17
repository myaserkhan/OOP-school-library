require_relative '../Relationship/book'

class BookOptions
  attr_accessor :book_list

  def initialize
    @books_list = []
  end

  def list_all_books
    if @books_list.empty?
      puts 'No record found! Add some books...'
    else
      puts 'Available books in the library'
      @books_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
    # show_menu
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books_list.push(Book.new(title, author))
    puts 'Book created successfully'
    # show_menu
  end
end