
class StaticPagesController < ApplicationController

  def home
     #AFFICHER TOUT LES POTINS
  @list = Gossip.all
  end

#définition de la page team
def team
    
end

#définition de la page contact
def contact
  
end

#définition de la page welcome dynamique
  def welcome
    @first_name = params[:first_name]
    puts params[:first_name].inspect
  end

#définition de la page potin dynamique
  def gossip
    @gossips = Gossip.all
    @id = params[:id]
    puts "******************"
    puts @id
    puts "******************"
  end


#définition de la page auteur dynamique
def auteur
  @gossips = Gossip.all
  @title = params[:title]
end  


end
