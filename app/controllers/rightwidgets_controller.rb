class RightwidgetsController < ApplicationController
  before_action :set_rightwidget, only: [:show, :edit, :update, :destroy]

  # GET /rightwidgets
  # GET /rightwidgets.json
  def index
    @rightwidgets = Rightwidget.all
  end

  # GET /rightwidgets/1
  # GET /rightwidgets/1.json
  def show
  end

  # GET /rightwidgets/new
  def new
    @rightwidget = Rightwidget.new
  end

  # GET /rightwidgets/1/edit
  def edit
  end

  # POST /rightwidgets
  # POST /rightwidgets.json
  def create
    @rightwidget = Rightwidget.new(rightwidget_params)

    respond_to do |format|
      if @rightwidget.save
        format.html { redirect_to @rightwidget, notice: 'Rightwidget was successfully created.' }
        format.json { render :show, status: :created, location: @rightwidget }
      else
        format.html { render :new }
        format.json { render json: @rightwidget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rightwidgets/1
  # PATCH/PUT /rightwidgets/1.json
  def update
    respond_to do |format|
      if @rightwidget.update(rightwidget_params)
        format.html { redirect_to @rightwidget, notice: 'Rightwidget was successfully updated.' }
        format.json { render :show, status: :ok, location: @rightwidget }
      else
        format.html { render :edit }
        format.json { render json: @rightwidget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rightwidgets/1
  # DELETE /rightwidgets/1.json
  def destroy
    @rightwidget.destroy
    respond_to do |format|
      format.html { redirect_to rightwidgets_url, notice: 'Rightwidget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rightwidget
      @rightwidget = Rightwidget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rightwidget_params
      params.require(:rightwidget).permit(:content, :url, :title)
    end
end
