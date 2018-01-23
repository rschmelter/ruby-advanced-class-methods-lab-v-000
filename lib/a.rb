def start
  @states_array = []
  HousingList::Scraper.new.make_states.each do |state|
    state = HousingList::State.new(state)
    @states_array << state
  end
  @states_hash = HousingList::Scraper.new.make_cities
  show_states
end

def welcome
  
  
end