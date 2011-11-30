ActiveAdmin.register Event do
  
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Details", :multipart => true do
        f.input :date
        f.input :title_en
        f.input :title_de
        f.input :link
        f.input :content_en
        f.input :content_de
      end    
      f.buttons
    end
end
