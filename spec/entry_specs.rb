RSpec.describe Entry do

  context "attributes" do

    it "should respond to name" do
      entry = Entry.new("Foobar Jones", "000-111-2222", "foobar@example.com")

      expect(entry).to respond_to(:name)
    end

    it "should respond to phone number" do
      entry = Entry.new("Foobar Jones", "000-111-2222", "foobar@example.com")

      expect(entry).to respond_to(:phone_number)
    end

    it "should respond to email" do
      entry = Entry.new("Foobar Jones", "000-111-2222", "foobar@example.com")

      expect(entry).to respond_to(:email)
    end
  end

  context ".to_s" do

    it "should return a string" do
      entry = Entry.new("Foobar Jones", "000-111-2222", "foobar@example.com")
      expected_string = "Name: Foobar Jones\nPhone Number: 000-111-2222\nEmail: foobar@example.com"

      expect(entry.to_s).to eq(expected_string)
    end
  end

end