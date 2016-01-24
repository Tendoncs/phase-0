
# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below


# Create a method called make_address that accepts parameters for the street, city , state, and zip and returns a single address string.

def make_address (street, city, state, zip)
ss = " "
addressString = "You live at " + street.to_s + ", in the beautiful city of " + city.to_s + ", " + state.to_s + ". Your zip is " + zip.to_s + "."
end

p make_address("633 Folsom St.", "San Francisco", "CA", "94107")

