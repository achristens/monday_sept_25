class Book
  @@on_shelf  = []
  @@on_load   = []

  def due_date
    @due_date
  end

  def update_due_date(new_date)
    @due_date = new_date
  end
end
