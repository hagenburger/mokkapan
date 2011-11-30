ActiveAdmin.register Picture do
  
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Details", :multipart => true do
        f.input :title_en
        f.input :title_de
        f.input :img, :as => :file, :label => 'Image'
      end    
      f.buttons
    end   
  
end
