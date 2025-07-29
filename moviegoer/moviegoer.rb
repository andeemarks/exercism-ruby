class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    return @age < 60 ? 15 : 10
  end

  def watch_scary_movie?
    return @age >= 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    if @member 
      return "🍿"
    end

    raise NotMovieClubMemberError
  end
end
