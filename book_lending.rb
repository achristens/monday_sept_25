class Book
  @@on_shelf  = []
  @@on_loan   = []

  def initialize(title, author, isbn)
    @title  = title
    @author = author
    @isbn   = isbn
  end

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
  end

  def due_date
    @due_date
  end

  def update_due_date(new_date)
    @due_date = new_date
  end

  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

  def self.browse
    @@on_shelf.sample
  end

end

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")

# puts sister_outsider.inspect
# puts "Here is what is currently in stock: #{Book.available.inspect}"
puts Book.browse.inspect
puts Book.browse.inspect
puts Book.browse.inspect
 puts Book.available.inspect
