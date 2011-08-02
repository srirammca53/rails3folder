class DepartmentsController < ApplicationController
 def new
    @department = Department.new
@department = @employee.department.create(params[:department])
   redirect_to department_path(@department)
  end
def create
    @employee = Employee.find(params[:employee_id])
    @department = @Employee.departments.create(params[:departmentname])
    redirect_to employee_path(@employee)
  end
def show
    @employee = Employee.find(params[:id])
      redirect_to employees_path(@department)
    end
end
