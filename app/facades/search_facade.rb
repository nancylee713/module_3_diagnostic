class SearchFacade
  def initialize(house)
    @house = house
  end

  def search_members
    member_data = potter_api_service.get_members_by_house
    @members ||= member_data.map do |member_hash|
      Member.new(member_hash)
    end
  end

  def potter_api_service
    PotterApiService.new(@house)
  end
end
