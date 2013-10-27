class IncidentsController < ApplicationController


  def index_incidents


    @json_incidents = HTTParty.get "https://webdemo.pagerduty.com/api/v1/incidents",
                                :headers=>{"Authorization"=>"Token token=\"VxuRAAxQoTgTjbo7wmmG\"",'Content-Type' => 'application/json'},
                                :query =>{ :status => "resolved" ,
                                           :limit=>10,
                                           :offset=>0,
                                           :until=>Date.today,
                                           :sort_by=>'created_on:desc',
                                           :fields =>'status,created_on,assigned_to_user,last_status_change_by'
                                 }


    respond_to do |format|
      format.html

    end
  end


end
