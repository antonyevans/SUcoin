class WantsController < ApplicationController
  # GET /wants
  # GET /wants.xml
  def index
    @wants = Want.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wants }
    end
  end

  # GET /wants/1
  # GET /wants/1.xml
  def show
    @want = Want.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @want }
    end
  end

  # GET /wants/new
  # GET /wants/new.xml
  def new
    @want = Want.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @want }
    end
  end

  # GET /wants/1/edit
  def edit
    @want = Want.find(params[:id])
  end

  # POST /wants
  # POST /wants.xml
  def create
    @want = Want.new(params[:want])

    respond_to do |format|
      if @want.save
        format.html { redirect_to(@want, :notice => 'Want was successfully created.') }
        format.xml  { render :xml => @want, :status => :created, :location => @want }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @want.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wants/1
  # PUT /wants/1.xml
  def update
    @want = Want.find(params[:id])

    respond_to do |format|
      if @want.update_attributes(params[:want])
        format.html { redirect_to(@want, :notice => 'Want was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @want.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wants/1
  # DELETE /wants/1.xml
  def destroy
    @want = Want.find(params[:id])
    @want.destroy

    respond_to do |format|
      format.html { redirect_to(wants_url) }
      format.xml  { head :ok }
    end
  end
end
