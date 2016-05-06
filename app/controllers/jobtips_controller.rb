class JobtipsController < ApplicationController
  before_action :set_jobtip, only: [:show, :edit, :update, :destroy]

  # GET /jobtips
  # GET /jobtips.json
  def index
    @jobtips = Jobtip.all
  end

  # GET /jobtips/1
  # GET /jobtips/1.json
  def show
  end

  # GET /jobtips/new
  def new
    @jobtip = Jobtip.new
  end

  # GET /jobtips/1/edit
  def edit
  end

  # POST /jobtips
  # POST /jobtips.json
  def create
    @jobtip = Jobtip.new(jobtip_params)

    respond_to do |format|
      if @jobtip.save
        format.html { redirect_to @jobtip, notice: 'Jobtip was successfully created.' }
        format.json { render :show, status: :created, location: @jobtip }
      else
        format.html { render :new }
        format.json { render json: @jobtip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobtips/1
  # PATCH/PUT /jobtips/1.json
  def update
    respond_to do |format|
      if @jobtip.update(jobtip_params)
        format.html { redirect_to @jobtip, notice: 'Jobtip was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobtip }
      else
        format.html { render :edit }
        format.json { render json: @jobtip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobtips/1
  # DELETE /jobtips/1.json
  def destroy
    @jobtip.destroy
    respond_to do |format|
      format.html { redirect_to jobtips_url, notice: 'Jobtip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobtip
      @jobtip = Jobtip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobtip_params
      params.require(:jobtip).permit(:title, :description, :image)
    end
end
