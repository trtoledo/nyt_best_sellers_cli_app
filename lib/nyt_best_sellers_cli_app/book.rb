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
    books = doc.search (".book-body")
    books.collect do |book|
      name = books.search("h2.title").text
      author = books.search("p.author").text
      publisher = books.search("p.publisher").text
      synopsis = books.search("p.description").text
      type = "Fiction"

      self.new(name, author, publisher, synopsis, type)
      end
  binding.pry
  end

  def self.scrape_nonfiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
    name = doc.search("h2.title").text
    author = doc.search("p.author").text
    publisher = doc.search("p.publisher").text
    synopsis = doc.search("p.description").text
    type = "Nonfiction"

    self.new(name, author, publisher, synopsis, type)

  end

end
