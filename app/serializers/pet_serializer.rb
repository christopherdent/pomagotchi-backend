class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :weight, :age, :picture_url, :user_id  #serializer allows you to choose what attributes you want to send with your json
end
