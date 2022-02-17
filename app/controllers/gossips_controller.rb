class GossipsController < ApplicationController
  def new
    # page de creation du formulaire
    puts "$" * 60
    puts "ceci est le contenu de params depuis la methode new :"
    puts params
    puts "$" * 60
    @gossip = Gossip.new
  end

  def create

  
    # doit renvoyer vers l'index (et non vers la vue create)
    puts "$" * 60
    puts "ceci est le contenu de params depuis la methode create :"
    puts params
    puts "$" * 60

    begin 
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content],
      'user_id' =>  User.all.sample.id)
     
        if @gossip.save
        puts "#ici#" *10
       
        flash[:gossip_success] = "😸youpi potin cree par #{@gossip.title}" 
     
        # redirect_to root_path  # repasse par le controleur
        render ('root_path') 


        else
            puts "#nopee#" *10
            flash[:gossip_alert] = "⚠️ Ragot non cree."
            render ('new')  #va en direct sur la view (garde les variables en memoire)
        end
    rescue Exception
      puts "#nopee#" *10
    end



    # if @gossip.save
    #   puts "#ici#" *10
    #   redirect_to root_path
    # else
    #   puts "#nopee#" *10
    #   render 'new'
    # end




  end
end
