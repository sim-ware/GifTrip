require 'search'

describe Search do

  describe "::new" do
    subject { Search.new }

    it "creates a new Search object" do
      expect(subject).to be_instance_of(Search)
    end

    it "has a default empty attributes" do
      expect(subject.mantra).to eq('')
    end
  end
end





# require 'search'
#
# describe Search do
#
#   describe "::new" do
#     subject { Search.new }
#
#     it "creates a new Search object" do
#       expect(subject).to be_instance_of(Search)
#     end
#
#     it "has a default empty attributes" do
#       expect(subject.colour).to eq('')
#       expect(subject.noun).to eq('')
#       expect(subject.filter).to eq('')
#       expect(subject.res).to eq({})
#     end
#   end
#
#   describe '#colour_selector'do
#     it 'adds a Colour to the Search Object' do
#       subject.colour_selector('Blue')
#       expect(subject.colour).to eq 'Blue'
#     end
#   end
#
#   describe '#random_noun'do
#     it 'assigns a random Noun to the Search Object' do
#       subject.random_noun
#       expect(subject.noun).not_to eq ''
#     end
#   end
#
#   describe '#make_filter'do
#     it 'combines the noun and colour properties to make a filter for the Pixabay Query' do
#       subject.random_noun
#       subject.colour_selector("Blue")
#       subject.make_filter
#       expect(subject.filter).to eq 'Blue' + ' ' + subject.noun
#     end
#   end
#
#   describe '#return_search'do
#     it 'uses the filter and returns a Data Object for Images from Pixabay' do
#       subject.colour_selector("Blue")
#       subject.noun = "Bird"
#       subject.make_filter
#       subject.return_search
#       expect(subject.res['hits'][0]['pageURL']).to eq "https://pixabay.com/en/bird-animal-blue-fly-548654/"
#     end
#   end
#
#   describe '#time'do
#     it 'returns the HTTP Response Time in Ms' do
#       subject.colour_selector("Blue")
#       subject.noun = "Bird"
#       subject.make_filter
#       subject.return_search
#       expect(subject.time).to be_a(Time)
#     end
#   end
#
# end
