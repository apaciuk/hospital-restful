# hospital-restful

Hospital patient medical details Restful API with UUIDs, ActiveModelSerializers

Basic spec requirements of this Rails 6 restful api:

- Create a data model in Ruby on Rails to store the personal data for patients in a hospital.

- The api endpoints should allow to:
  - get the personal information of patients
  - create new patients
  - update the patients data etc.
  - delete the patients data
- You would need to store the usual personal information about the patients like name, address etc. but also include data in the model about their medical history.
- There should also be an end point to get the data of when and why the patients visited the hospital e.g. 7-15-2018 headache
- The API should respond to requests in JSON format
- Put code in the project to test the end points by making calls to your new REST api
  - You can use gems like this for that https://github.com/jnunemaker/httparty
- Service object to check individual users medical history in "GetHistoriesService"

Usage, basic console example

user = Patient.first
user (users data)
check = GetHistoriesService.new(user).call
check (returns the users medical history in console.)

### Routes (IDs UUID)

api_v1_patient_medical_histories GET /api/v1/patients/:patient_id/medical_histories(.:format) api/v1/medical_histories#index
POST /api/v1/patients/:patient_id/medical_histories(.:format) api/v1/medical_histories#create
api_v1_patient_medical_history GET /api/v1/patients/:patient_id/medical_histories/:id(.:format) api/v1/medical_histories#show
PATCH /api/v1/patients/:patient_id/medical_histories/:id(.:format) api/v1/medical_histories#update
PUT /api/v1/patients/:patient_id/medical_histories/:id(.:format) api/v1/medical_histories#update
DELETE /api/v1/patients/:patient_id/medical_histories/:id(.:format) api/v1/medical_histories#destroy
api_v1_patients GET /api/v1/patients(.:format) api/v1/patients#index
POST /api/v1/patients(.:format) api/v1/patients#create
api_v1_patient GET /api/v1/patients/:id(.:format) api/v1/patients#show
PATCH /api/v1/patients/:id(.:format) api/v1/patients#update
PUT /api/v1/patients/:id(.:format) api/v1/patients#update
DELETE /api/v1/patients/:id(.:format) api/v1/patients#destroy
