class PatientsController < ApplicationController
	def index
		# byebug
		@patients = Patient.all
		# byebug
		# @appointments = Appointment.all
	end

	def new
		@patient = Patient.new

		# @appointments = @patient.appointments.build
		
	
		# @physician = @appointments.build_physician
	end
	def create
		# byebug
		@patient = Patient.new(patient_params)
		
		# physician_id = params[:patient][:physician][:physician_id]
		# @appointment = @patient.appointments.build
		# @appointment.physician_id = physician_id


		# @physician.save
		# @appointments.save
		if @patient.save
			redirect_to patients_path
		else
			render 'new'
		end
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])
		if @patient.update(patient_params)
			redirect_to patients_path
		else
			render 'edit'
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy
		redirect_to patients_path
	end

	private
	def patient_params
		params.require(:patient).permit(:name)
		# params.require(:patient).permit(:name, appointments_attributes: [:id,:appointment_date],physicians_attributes: [:physician_id])
		
	end
end
