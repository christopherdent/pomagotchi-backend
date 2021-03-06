

class Api::V1::PetsController < ApplicationController

    def index 
        pets = Pet.all 
        render json: PetSerializer.new(pets) 
    end 

    def create
       pet = Pet.new(pet_params)
       if pet.save 
           render json :pet, status: :accepted
       else 
           render json: {errors: pets.errors.full_messages}, status: :unprocessible_entity
  
       end 
    end 


    def show 
        pet = Pet.find(params[:id])
        render json: pet 
    end 


    def update 
        pet = Pet.find(params[:id])
          
        if pet.update(pet_params) 
            render json: pet 
        else 
            render json: {errors: pets.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

private

    def pet_params 
        params.require(:pet).permit(:name, :weight, :age, :picture_url, :user_id, :id, :happiness)  #requiring the top level hash and permitting the following attributes.  in fetch request you will have to remember they're nested.  
        
    end 


end
