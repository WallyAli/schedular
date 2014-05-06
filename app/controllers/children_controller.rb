class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]
  caches_action :index
  before_action :expire_caching, only: [:create, :update, :destroy]

  def index
    @children = Child.all
  end

  def show
    @attendances = @child.attendances
  end

  def new
    @child = Child.new
  end

  def edit
  end

  def create
    @child = Child.new(child_params)
    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully created.' }
        format.json { render action: 'show', status: :created, location: @child }
      else
        format.html { render :new }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @child.update(child_params)
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @child.destroy
    @parent = @child.parent
    respond_to do |format|
      format.html { redirect_to parent_path(@parent) }
      format.json { head :no_content }
    end
  end

  private

    def expire_caching
      expire_action :action => :index
    end
    
    def set_child
      @child = Child.find(params[:id])
    end

    def child_params
      params.require(:child).permit(:first_name, :last_name, 
                                    :birthday, :parent_id, 
                                    :time_in, :time_out, :gender, 
                                    {:schedule_ids => []})
    end
end
