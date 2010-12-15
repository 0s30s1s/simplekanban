class StoriesController < ApplicationController
  # GET /stories
  # GET /stories.xml
  def index
    @stories = Story.all

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @stories }
    end
  end

  # GET /stories/1
  def show
    @story = Story.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /stories/new
  def new
    @story = Story.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /stories/1/edit
  def edit
    @story = Story.find(params[:id])
  end

  # POST /stories
  def create
    @story = Story.new(params[:story])

    respond_to do |format|
      if @story.save
        format.html { redirect_to(@story, :notice => 'Story was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /stories/1
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to(@story, :notice => 'Story was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /stories/1
  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    respond_to do |format|
      format.html { redirect_to(stories_url) }
    end
  end
end
