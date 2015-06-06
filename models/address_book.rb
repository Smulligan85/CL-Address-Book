class AddressBook
  require_relative 'entry.rb'
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0

    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(entry)

    index = 0

    @entries.each do |i|
      if i.name != entry.name
        index += 1
      else
        @entries.delete(i)
      end
    end
  end
    
end