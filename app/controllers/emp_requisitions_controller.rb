class EmpRequisitionsController < ApplicationController
  before_action :set_emp_requisition, only: [:show, :edit, :update, :destroy]

  # GET /emp_requisitions
  # GET /emp_requisitions.json
  def index
    @emp_requisitions = EmpRequisition.all
  end

  # GET /emp_requisitions/1
  # GET /emp_requisitions/1.json
  def show
  end

  # GET /emp_requisitions/new
  def new
    @emp_requisition = EmpRequisition.new
  end

  # GET /emp_requisitions/1/edit
  def edit
  end

  # POST /emp_requisitions
  # POST /emp_requisitions.json
  def create
    @emp_requisition = EmpRequisition.new(emp_requisition_params)

    respond_to do |format|
      if @emp_requisition.save
        format.html { redirect_to @emp_requisition, notice: 'Emp requisition was successfully created.' }
        format.json { render :show, status: :created, location: @emp_requisition }
      else
        format.html { render :new }
        format.json { render json: @emp_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_requisitions/1
  # PATCH/PUT /emp_requisitions/1.json
  def update
    respond_to do |format|
      if @emp_requisition.update(emp_requisition_params)
        format.html { redirect_to @emp_requisition, notice: 'Emp requisition was successfully updated.' }
        format.json { render :show, status: :ok, location: @emp_requisition }
      else
        format.html { render :edit }
        format.json { render json: @emp_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_requisitions/1
  # DELETE /emp_requisitions/1.json
  def destroy
    @emp_requisition.destroy
    respond_to do |format|
      format.html { redirect_to emp_requisitions_url, notice: 'Emp requisition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_requisition
      @emp_requisition = EmpRequisition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emp_requisition_params
      params.require(:emp_requisition).permit(:title, :job_hours, :start_date, :position, :user_id)
    end
end
