class AppointmentsController < ApplicationController
	def index
		@appointments = Appointment.all
	end
	def new
		@appointment = Appointment.new
		
	end


	def create
		@appointment = Appointment.new(appointment_params)
		patient_id = params[:appointment][:patient_id]
		physician_id = params[:appointment][:physician_id]
		# byebug
		if @appointment.save
			# byebug
			redirect_to appointments_path
		else
			render 'new'
		end
	end
	private
	def appointment_params
		params.require(:appointment).permit(:appointment_date,:patient_id,:physician_id)
	end
end
