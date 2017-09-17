class ExapmlesController < ApplicationController
  before_action :set_exapmle, only: [:show, :edit, :update, :destroy]

  # GET /exapmles
  # GET /exapmles.json
  def index
    @exapmles = Exapmle.all
  end

  # GET /exapmles/1
  # GET /exapmles/1.json
  def show
  end

  # GET /exapmles/new
  def new
    @exapmle = Exapmle.new
  end

  # GET /exapmles/1/edit
  def edit
  end

  # POST /exapmles
  # POST /exapmles.json
  def create
    @exapmle = Exapmle.new(exapmle_params)

    respond_to do |format|
      if @exapmle.save
        format.html { redirect_to @exapmle, notice: 'Exapmle was successfully created.' }
        format.json { render :show, status: :created, location: @exapmle }
      else
        format.html { render :new }
        format.json { render json: @exapmle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exapmles/1
  # PATCH/PUT /exapmles/1.json
  def update
    respond_to do |format|
      if @exapmle.update(exapmle_params)
        format.html { redirect_to @exapmle, notice: 'Exapmle was successfully updated.' }
        format.json { render :show, status: :ok, location: @exapmle }
      else
        format.html { render :edit }
        format.json { render json: @exapmle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exapmles/1
  # DELETE /exapmles/1.json
  def destroy
    @exapmle.destroy
    respond_to do |format|
      format.html { redirect_to exapmles_url, notice: 'Exapmle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exapmle
      @exapmle = Exapmle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exapmle_params
      params.require(:exapmle).permit(:name, :title, :message)
    end
end
