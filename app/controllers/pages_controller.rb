class PagesController < ApplicationController
  def home
    @lotto_numbers = (1..45).to_a.sample( 7 ).join(" - ")
    @uptime = ` uptime `
    @fortune = ` fortune -s`
  end

  def dashboard
  end

  def fortune
    render text: ` fortune -s `
  end

  def update
    render json: { uptime: ` uptime ` }

  end

  def lotto_numbers
    res = {
      numbers: (1..45).to_a.sample( 7 )
    }
    render json: res
  end

end
