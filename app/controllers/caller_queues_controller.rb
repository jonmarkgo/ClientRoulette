class CallerQueuesController < ApplicationController
  # GET /caller_queues
  # GET /caller_queues.xml
  def index
    @caller_queues = CallerQueue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caller_queues }
    end
  end

  # GET /caller_queues/1
  # GET /caller_queues/1.xml
  def show
    @caller_queue = CallerQueue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caller_queue }
    end
  end

  # GET /caller_queues/new
  # GET /caller_queues/new.xml
  def new
    @caller_queue = CallerQueue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caller_queue }
    end
  end

  # GET /caller_queues/1/edit
  def edit
    @caller_queue = CallerQueue.find(params[:id])
  end

  # POST /caller_queues
  # POST /caller_queues.xml
  def create
    @caller_queue = CallerQueue.new(params[:caller_queue])

    respond_to do |format|
      if @caller_queue.save
        format.html { redirect_to(@caller_queue, :notice => 'Caller queue was successfully created.') }
        format.xml  { render :xml => @caller_queue, :status => :created, :location => @caller_queue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caller_queue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caller_queues/1
  # PUT /caller_queues/1.xml
  def update
    @caller_queue = CallerQueue.find(params[:id])

    respond_to do |format|
      if @caller_queue.update_attributes(params[:caller_queue])
        format.html { redirect_to(@caller_queue, :notice => 'Caller queue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caller_queue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caller_queues/1
  # DELETE /caller_queues/1.xml
  def destroy
    @caller_queue = CallerQueue.find(params[:id])
    @caller_queue.destroy

    respond_to do |format|
      format.html { redirect_to(caller_queues_url) }
      format.xml  { head :ok }
    end
  end
end
