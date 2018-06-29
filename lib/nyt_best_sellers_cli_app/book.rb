class NytBestSellersCliApp::Book
  attr_accessor :name, :author, :publisher, :synopsis, :type
  #1. Make a Scraper class that scrapes OK
  #2. Build a finder method self.find_by_typefiection)
  #3. Prevent scraping the same site more than once
  #4. Fix the error on number that's too big OK

   #@@all = []
   @@all_fiction_books = []
   @@all_nonfiction_books = []


  def initialize(name, author, publisher, synopsis, type)
    @name = name
    @author = author
    @publisher = publisher
    @synopsis = synopsis
    @type = type
    if type == "Fiction"
    @@all_fiction_books << self
    elsif type == "Nonfiction"
    @@all_nonfiction << self
    end
  end

  def self.all_fiction_books
   @@all_fiction_books
  end
  def self.all_nonfiction_books
   @@all_nonfiction_books
  end

  #def self.all
   #@@all
  #end

  def self.fiction_books
    if @@all_fiction_books.count == 0
      self.scrape_fiction_books
    else
      @@all_fiction_books
    end
  end

  def self.nonfiction_books
    if @@all_nonfiction_books.count == 0
      self.scrape_nonfiction_books
    else
      @@all_nonfiction_books
    end
  end



  def self.scrape_fiction_books
    # doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/"))
    doc = NytBestSellersCliApp::Scraper.scrape_fiction
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
    doc = NytBestSellersCliApp::Scraper.scrape_nonfiction
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
