class GossipsController < ApplicationController
  def new
    # page de creation du formulaire

    puts "$" * 60
    @gossip = Gossip.new
  end

  def create
 
    current_user = User.find_by_id(session[:current_user_id])

    begin 
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content],
      'user_id' =>  current_user.id)
     
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


  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(tes_params)
      redirect_to @gossip
    else
      render :edit
    end 
  end
end
