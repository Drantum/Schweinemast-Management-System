class DeadsController < ApplicationController
  # GET /deads
  # GET /deads.xml
  def index
    @deads = Dead.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @deads }
    end
  end

  # GET /deads/1
  # GET /deads/1.xml
  def show
    @dead = Dead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dead }
    end
  end

  # GET /deads/new
  # GET /deads/new.xml
  def new
    @dead = Dead.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dead }
    end
  end

  # GET /deads/1/edit
  def edit
    @dead = Dead.find(params[:id])
  end

  # POST /deads
  # POST /deads.xml
  def create
    @dead = Dead.new(params[:dead])

    respond_to do |format|
      if @dead.save
        format.html { redirect_to(@dead, :notice => 'Dead was successfully created.') }
        format.xml  { render :xml => @dead, :status => :created, :location => @dead }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /deads/1
  # PUT /deads/1.xml
  def update
    @dead = Dead.find(params[:id])

    respond_to do |format|
      if @dead.update_attributes(params[:dead])
        format.html { redirect_to(@dead, :notice => 'Dead was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deads/1
  # DELETE /deads/1.xml
  def destroy
    @dead = Dead.find(params[:id])
    @dead.destroy

    respond_to do |format|
      format.html { redirect_to(deads_url) }
      format.xml  { head :ok }
    end
  end
end
