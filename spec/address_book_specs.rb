RSpec.describe AddressBook do

  context "attributes" do

    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initilize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initilize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end

  end

  context ".add_entry" do

    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry("Foobar Jones", "000-111-2222", "foobar@example.com")
      expect(book.entries.size).to eq(1)
    end

    it "adds the correct information to the address book" do
      book = AddressBook.new
      book.add_entry("Foobar Jones", "000-111-2222", "foobar@example.com")
      new_entry = book.entries[0]

      expect(new_entry.name).to eq("Foobar Jones")
      expect(new_entry.phone_number).to eq("000-111-2222")
      expect(new_entry.email).to eq("foobar@example.com")
    end
  end

  context ".remove_entry" do

    it "removes only one entry from the address book" do
      book = AddressBook.new
      book.add_entry("Foobar Jones", "000-111-2222", "foobar@example.com")
      entry = book.entries[0]
      book.remove_entry(entry)

      expect(entry.name).not_to eq("Foobar Jones")
      expect(entry.phone_number).not_to eq("000-111-2222")
      expect(entry.email).not_to eq("foobar@example.com")
    end
  end


end