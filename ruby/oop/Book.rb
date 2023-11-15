class Book
  attr_accessor :title, :author, :pages
  @@created_books = []

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages

    self.class.created_books.push(self)
  end

  def self.created_books
    @@created_books
  end
end

book1 = Book.new("DDD", "Eric Evans", 498)
book2 = Book.new("Algorithms", "Jose Augusto", 300)

books = Book.created_books

books.each do |book|
  puts "------------------"
  puts "title: #{book.title} \nauthor: #{book.author} \npages: #{book.pages}"
end