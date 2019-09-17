class PositionApprovalsController < ApplicationController
  before_action :set_position_approval, only: [:show, :edit, :update, :destroy]

  # GET /position_approvals
  # GET /position_approvals.json
  def index
    @position_approvals = PositionApproval.all
  end

  # GET /position_approvals/1
  # GET /position_approvals/1.json
  def show
  end

  # GET /position_approvals/new
  def new
    @position_approval = PositionApproval.new
  end

  # GET /position_approvals/1/edit
  def edit
  end

  # POST /position_approvals
  # POST /position_approvals.json
  def create
    @position_approval = PositionApproval.new(position_approval_params)

    respond_to do |format|
      if @position_approval.save
        format.html { redirect_to @position_approval, notice: 'Position approval was successfully created.' }
        format.json { render :show, status: :created, location: @position_approval }
      else
        format.html { render :new }
        format.json { render json: @position_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_approvals/1
  # PATCH/PUT /position_approvals/1.json
  def update
    respond_to do |format|
      if @position_approval.update(position_approval_params)
        format.html { redirect_to @position_approval, notice: 'Position approval was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_approval }
      else
        format.html { render :edit }
        format.json { render json: @position_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_approvals/1
  # DELETE /position_approvals/1.json
  def destroy
    @position_approval.destroy
    respond_to do |format|
      format.html { redirect_to position_approvals_url, notice: 'Position approval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_approval
      @position_approval = PositionApproval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_approval_params
      params.require(:position_approval).permit(:emp_requisition_id, :annual_compensation, :phone, :email,
                                                :comment, :approved)
    end
end