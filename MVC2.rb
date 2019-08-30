require 'httparty'
class MVC2
  include HTTParty
  def initialize
    @base_uri = "https://secure-hamlet-19722.herokuapp.com/api/v1/characters"
  end

  def show_all
    @characters =  HTTParty.get(@base_uri)
  end

  def show_a_character(name)
    @character =  HTTParty.get("#{@base_uri}/#{name}")
  end
end
