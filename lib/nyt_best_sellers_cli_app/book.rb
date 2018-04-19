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
    name = doc.search("h2.title").text
    author = doc.search("p.author").text
    publisher = doc.search("p.publisher").text
    synopsis = doc.search("p.description").text
    type = "fiction"

    Book.new(name, author, publisher, synopsis, type)



  #binding.pry
  end

  def self.scrape_nonfiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
    name = doc.search("h2.title").text
    author = doc.search("p.author").text
    publisher = doc.search("p.publisher").text
    synopsis = doc.search("p.description").text

  end

end
