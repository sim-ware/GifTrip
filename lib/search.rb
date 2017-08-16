require 'giphy'

class Search
  attr_accessor :mantra, :giffer, :urllist

  def initialize
    @mantra = ''
    @giffer
    @urllist = []
  end

  def mantra_maker(mantra)
    @mantra = "#{mantra}"
  end

  def giphy_call
    @giffer = Giphy.search("#{@mantra}", {limit: 5})
  end

  def fill_urllist
    for i in 0..4
      b = @giffer[i].embed_url.to_s
      @urllist.push(b)
    end
  end

end

# for i in 0..@r
#   t = Ticket.new
#   @ticketlist.push(t)
# end
