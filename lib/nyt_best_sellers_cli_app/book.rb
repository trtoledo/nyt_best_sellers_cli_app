class NytBestSellersCliApp::Book
  attr_accessor :name, :author, :publisher, :synopsis, :type
  #1. Make a Scraper class that scrapes
  #2. Build a finder method self.find_by_typefiection)
  #3. Prevent scraping the same site more than once
  #4. Fix the error on number that's too big

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
    # doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
    doc = scrape_fiction
    books = doc.css (".book-body")
    books.collect { |book|
      name = book.search("h2.title").text
      author = book.search("p.author").text
      publisher = book.search("p.publisher").text
      synopsis = book.search("p.description").text
      type = "Fiction"
      self.new(name, author, publisher, synopsis, type)}
  end

  def self.scrape_fiction
    puts "SCRAPING FICTION *********"
    Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
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
