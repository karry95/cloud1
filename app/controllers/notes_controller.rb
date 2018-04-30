class NotesController < ApplicationController

# GET /patients/1/note
  def index
# For URL like /patients/1/notes
# Get the patient with id=1
  @patient = Patient.find(params[:patient_id])
# Access all notes for that patient
  @notes = @patient.notes
end
# GET /patients/1/notes/2
  def show
  @patient = Patient.find(params[:patient_id])
# For URL like /patient/1/notes/2
# Find an note  in patients 1 that has id=2
  @notes = @patient.notes.find(params[:id])
end
# GET /movies/1/reviews/new
  def new
  @patient = Patient.find(params[:patient_id])
# Associate an review object with movie 1
  @note = @patient.notes.build
end
# POST /movies/1/reviews
  def create
  @patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews
# Populate an review associate with movie 1 with form data 
# Movie will be associated with the review
#  @review = @movie.reviews.build(params.require(:review).permit!)
  @note = @patient.notes.build(params.require(:note).permit(:details))
  if @note.save
# Save the review successfully
  redirect_to patient_note_url(@patient, @note)
  else
  render :action => "new"
 end
end
# GET /movies/1/reviews/2/edit
  def edit
  @patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews/2/edit
# Get review id=2 for movie 1
  @note = @patient.notes.find(params[:id])
end
# PUT /movies/1/reviews/2
  def update
  @patient = Patient.find(params[:patient_id])
  @note = Note.find(params[:id])
  if
  @note.update_attributes(params.require(:note).permit(:details))
# Save the review successfully
  redirect_to patient_note_url(@patient, @note)
 else
  render :action => "edit"
 end
end
# DELETE /movies/1/reviews/2
  def destroy
  @patient = Patient.find(params[:patient_id])
  @note = Note.find(params[:id])
  @note.destroy
  respond_to do |format|
  format.html { redirect_to patient_notes_path(@patient) }
  format.xml { head :ok }
end
end
end
