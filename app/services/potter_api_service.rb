class PotterApiService

  def initialize(house)
    @house = house
  end

  def get_members_by_house
    json_response = conn.get
    JSON.parse(json_response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(
      url: 'https://www.potterapi.com/v1/characters',
      params: {
        'key' => ENV["POTTER_API_KEY"],
        'house' => @house
      }
    )
  end
end
