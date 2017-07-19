require 'giphy'

class Search
  attr_accessor :mantra

  def initialize
    @mantra = ''
  end

  def mantra_maker(mantra)
    @mantra = "#{mantra}"
  end

end
