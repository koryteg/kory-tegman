class TalentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  # GET /talents
  # GET /talents.json
  def index
    @talents = Talent.all
  end

  # GET /talents/1
  # GET /talents/1.json
  def show
    @talent = Talent.find(params[:id])
  end

  def new
    @talent = Talent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talent }
    end
  end

  def edit
    @talent = Talent.find(params[:id])
  end

  def create
    @talent = Talent.new(talent_params)
    if @talent.save
      flash[:success] = 'Talent was successfully created.'
      redirect_to @talent
    else
      render "new"
    end
  end

  # PUT /talents/1
  # PUT /talents/1.json
  def update
    @talent = Talent.find(params[:id])
    if @talent.update_attributes(talent_params)
      flash[:success] = 'Talent was successfully updated.'
      redirect_to @talent
    else
      render "edit"
    end
  end

  def sort
    @talents = Talent.all
    @talents.each do |talent|
      talent.position = params['talent'].index(talent.id.to_s) + 1
      talent.save
    end
    render :nothing => true
  end


  # DELETE /talents/1
  # DELETE /talents/1.json
  def destroy
    @talent = Talent.find(params[:id])
    @talent.destroy

    respond_to do |format|
      format.html { redirect_to talents_url }
      format.json { head :no_content }
    end
  end

  def talent_params
    params.require(:talent).permit(
        :title, :description, :image, :roles,
        :link, :position, :archive
      )
  end
end
