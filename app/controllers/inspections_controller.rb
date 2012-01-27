class InspectionsController < ApplicationController
  def index
    @establishments = Establishment.where("address LIKE '%king%'")

    @establishments.each do |e|
      if e.inspections_json
        Rails.logger.info e.inspections_json
        e[:inspections_info] = JSON.parse(e.inspections_json)
      end
    end

    #Inspection.establishments.order(:establishment_name).offset(7500).first(500).each do |est|
      

     # @establishments << {
      #  :id => est.establishment_id,
       # :name => est.establishment_name,
      #  :type => est.establishment_type,
      #  :address => est.establishment_address,
      #  :inspections => Inspection.where(:establishment_id => est.establishment_id).group(:inspection_id).order(:inspection_date)
      #}
    #end
  end

end