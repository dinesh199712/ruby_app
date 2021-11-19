class RubyEmployeeAppsController < ApplicationController
  before_action :set_ruby_employee_app, only: [:show, :edit, :update, :destroy]

  # GET /ruby_employee_apps
  # GET /ruby_employee_apps.json
  def index
    @ruby_employee_apps = RubyEmployeeApp.all
  end

  # GET /ruby_employee_apps/1
  # GET /ruby_employee_apps/1.json
  def show
  end

  # GET /ruby_employee_apps/new
  def new
    @ruby_employee_app = RubyEmployeeApp.new
  end

  # GET /ruby_employee_apps/1/edit
  def edit
  end

  # POST /ruby_employee_apps
  # POST /ruby_employee_apps.json
  def create
    @ruby_employee_app = RubyEmployeeApp.new(ruby_employee_app_params)

    respond_to do |format|
      if @ruby_employee_app.save
        format.html { redirect_to @ruby_employee_app, notice: 'Ruby employee app was successfully created.' }
        format.json { render :show, status: :created, location: @ruby_employee_app }
      else
        format.html { render :new }
        format.json { render json: @ruby_employee_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_employee_apps/1
  # PATCH/PUT /ruby_employee_apps/1.json
  def update
    respond_to do |format|
      if @ruby_employee_app.update(ruby_employee_app_params)
        format.html { redirect_to @ruby_employee_app, notice: 'Ruby employee app was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruby_employee_app }
      else
        format.html { render :edit }
        format.json { render json: @ruby_employee_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_employee_apps/1
  # DELETE /ruby_employee_apps/1.json
  def destroy
    @ruby_employee_app.destroy
    respond_to do |format|
      format.html { redirect_to ruby_employee_apps_url, notice: 'Ruby employee app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_employee_app
      @ruby_employee_app = RubyEmployeeApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_employee_app_params
      params.require(:ruby_employee_app).permit(:name, :age, :gender, :designation)
    end
end
