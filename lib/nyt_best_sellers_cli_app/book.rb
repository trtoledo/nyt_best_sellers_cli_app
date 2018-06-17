class NytBestSellersCliApp::Book
  attr_accessor :name, :author, :publisher, :synopsis, :type

   @@all = []

  def initialize(name, author, publisher, synopsis, type)
    @name = name
    @author = author
    @publisher = publisher
    @synopsis = synopsis
    @type = type
    @@all << self

  end

  def self.all
   @@all
  end

  def self.scrape_fiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
    books = doc.css (".book-body")
    books.collect { |book|
      name = book.search("h2.title").text
      author = book.search("p.author").text
      publisher = book.search("p.publisher").text
      synopsis = book.search("p.description").text
      type = "Fiction"
      self.new(name, author, publisher, synopsis, type)}
  end

  def self.scrape_nonfiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
    books = doc.css (".book-body")
    books.collect { |book|
      name = book.search("h2.title").text
      author = book.search("p.author").text
      publisher = book.search("p.publisher").text
      synopsis = book.search("p.description").text
      type = "Nonfiction"
      self.new(name, author, publisher, synopsis, type)}
  end

end
