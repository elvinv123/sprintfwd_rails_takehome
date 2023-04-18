class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      @member.project_ids= params[:member][:project_ids].reject { |c| c.blank? }
      redirect_to members_path
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])

    if @member.update(member_params)
      @member.project_ids= params[:member][:project_ids].reject { |c| c.blank? }
      redirect_to member_path(@member)
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :city, :state, :country, :team_id)
  end
end