def start
  @states_array = []
  HousingList::Scraper.new.make_states.each do |state|
    state = HousingList::State.new(state)
    @states_array << state
  end
  @states_hash = HousingList::Scraper.new.make_cities
  show_states
end

def show_states
  puts "Welcome! To get started, type 'list' to show a list of states and areas with available rentals"
    valid = false
    while valid == false
      input = gets.strip
      if input.downcase == "list"
        valid = true
        i = 1
        @states_array.each do |state|
          puts "#{i}. #{state.name}"
          i += 1
        end
      else
        puts "Invalid input. Please type 'list' to show states"
      end
    end
end
