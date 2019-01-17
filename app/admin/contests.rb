ActiveAdmin.register Contest do
  permit_params :id,:name,:instructions,:user_id,:created_at,:updated_at,questions_attributes: [:id,:question,:answer,:instructions,:_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :instructions
      f.input :user_id, :as => :hidden ,:input_html => { :value => current_user.id }

      f.inputs "questions" do
        f.has_many :questions , heading: false,
                               allow_destroy: true do |a|

           a.input :question
           a.input :answer
           a.input :instructions
        end
      end
    end

    f.actions
  end
end
