module ApplicationHelper
 def full_title(page_title)
		base_title = "Montagna di Torricchio"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
		
	end
def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

    # Funzione usata per aggiungere dinamicamente un campo al form
      def link_to_add_fields(name, f, association)
         new_object = f.object.class.reflect_on_association(association).klass.new
         fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
         render(association.to_s.singularize + "", :f => builder)
         end
         link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
      end



   # Funzione usata per rimuovere dinamicamente un campo al form
      def link_to_remove_fields(name, f)
         f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
      end

def javascript(*files)
  content_for(:head) { javascript_include_tag(*files) }
end

def stylesheet(*files)
  content_for(:head) { stylesheet_link_tag(*files) }
end

end

