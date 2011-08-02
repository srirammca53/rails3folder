class EmpdetailsController < ApplicationController
  # GET /empdetails
  # GET /empdetails.xml
  def index
    @empdetails = Empdetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @empdetails }
    end
  end

  # GET /empdetails/1
  # GET /empdetails/1.xml
  def show
    @empdetail = Empdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @empdetail }
    end
  end

  # GET /empdetails/new
  # GET /empdetails/new.xml
  def new
    @empdetail = Empdetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @empdetail }
    end
  end

  # GET /empdetails/1/edit
  def edit
    @empdetail = Empdetail.find(params[:id])
  end

  # POST /empdetails
  # POST /empdetails.xml
  def create
    @empdetail = Empdetail.new(params[:empdetail])

    respond_to do |format|
      if @empdetail.save
        format.html { redirect_to(@empdetail, :notice => 'Empdetail was successfully created.') }
        format.xml  { render :xml => @empdetail, :status => :created, :location => @empdetail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @empdetail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /empdetails/1
  # PUT /empdetails/1.xml
  def update
    @empdetail = Empdetail.find(params[:id])

    respond_to do |format|
      if @empdetail.update_attributes(params[:empdetail])
        format.html { redirect_to(@empdetail, :notice => 'Empdetail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @empdetail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /empdetails/1
  # DELETE /empdetails/1.xml
  def destroy
    @empdetail = Empdetail.find(params[:id])
    @empdetail.destroy

    respond_to do |format|
      format.html { redirect_to(empdetails_url) }
      format.xml  { head :ok }
    end
  end
end
