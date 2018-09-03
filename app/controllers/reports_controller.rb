class ReportsController < ApplicationController
    
    before_action :create
    
    def index
        @report = Report.last
    end
    
    def create
        @doc = Nokogiri::XML(File.open("lib/enedis.xml"))
        
        @report = Report.new
        @report.pdl_id = @doc.xpath("//Identifiant_Stable_PDL")[0].text.to_i             
        @report.pdl_id_second = @doc.xpath("//Identifiant_Stable_PDL")[1].text.to_i
        @report.starting_date = @doc.xpath("//Date_Debut_Consommation")[0].text.to_date
        @report.starting_date_second = @doc.xpath("//Date_Debut_Consommation")[2].text.to_date
        @report.ending_date = @doc.xpath("//Date_Fin_Consommation")[0].text.to_date 
        @report.ending_date_second = @doc.xpath("//Date_Fin_Consommation")[2].text.to_date
        @report.starting_index = @doc.xpath("//Index_Debut_Consommation")[0].text.to_i
        @report.starting_index_second = @doc.xpath("//Index_Debut_Consommation")[1].text.to_i
        @report.ending_index = @doc.xpath("//Index_A_Facturer")[0].text.to_i
        #@report.ending_index_second = @doc.xpath("/Index_A_Facturer")[1].text.to_i
        @report.power_consumption = @doc.xpath("//Consommation_Cadran")[0].text.to_i 
        @report.power_consumption_second = @doc.xpath("//Consommation_Cadran")[1].text.to_i 
        
        @report.save
    end
    
end