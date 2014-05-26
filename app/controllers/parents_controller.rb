class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  caches_action :index, :unless => :current_user, :cache_path => Proc.new { |c| c.params }
  before_action :expire_caching, only: [:create, :update, :destroy]
  
  def index
    @parents = Parent.all
  end

  def show
  end

  def new
    @parent = Parent.new
    3.times { @parent.children.build }
  end

  def edit
  end

  def create
    @parent = Parent.new(parent_params)
    respond_to do |format|
      if @parent.save
        ParentMailer.registration_confirmation(@parent).deliver
        format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url }
      format.json { head :no_content }
    end
  end

  private

    def expire_caching
      expire_action :action => :index
    end

    def set_parent
      @parent = Parent.find(params[:id])
    end

    def parent_params
      params.require(:parent).permit(:case_number, :first_name, 
                                     :middle_name, :last_name, 
                                      :address, :phone, :city, 
                                      :state, :zipcode, :email, 
                                      children_attributes: [ 
                                      :id, :first_name, :last_name, 
                                      :birthday, :gender,
                                      :_destroy, {:schedule_ids => []}],
                                      schedule_attributes: [:id, :name])
    end
end
