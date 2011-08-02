class EmployeesController < ApplicationController
def index
    @employees = Employee.all
      render :action => "index"
  end

  def show
    @employee = Employee.find(params[:id])
    render :action => "show"
  end

  def new
    @employee = Employee.new
     render :action => "new"
  end


  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(params[:employee])
   
      if @employee.save
       redirect_to(@employee, :notice => 'employee was successfully created.')
      else
    render :action => "new"    
      end
    
  end


  def update
    @employee = Employee.find(params[:id])
    
      if @employee.update_attributes(params[:employee])
        redirect_to(@employee, :notice => 'employee was successfully updated.')   
      else
        render :action => "edit" 
      
      
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

   
     redirect_to(employees_url) 
 
    end
 
end
