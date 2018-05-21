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
    #binding.pry
    books = doc.css (".book-body")
    #binding.pry
    books.each do |book|
      #binding.pry
      self.new(books.search("h2.title").text, books.search("p.author").text, books.search("p.publisher").text, books.search("p.description").text, "Fiction")



      #b.name = books.search("h2.title").text
      #b.author = books.search("p.author").text
      #b.publisher = books.search("p.publisher").text
      #b.synopsis = books.search("p.description").text
      #b.type = "Fiction"

      #self.new(name, author, publisher, synopsis, type)
      #binding.pry
      end

  end

  def self.scrape_nonfiction_books
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/"))
    books = doc.search (".book-body") #returns a NodeList, so .each can't be called
    binding.pry
    books.each do |book|
      #binding.pry
      name = doc.search("h2.title").text
      author = doc.search("p.author").text
      publisher = doc.search("p.publisher").text
      synopsis = doc.search("p.description").text
      type = "Nonfiction"

      self.new(name, author, publisher, synopsis, type)
      #binding.pry
    end
  end

end
