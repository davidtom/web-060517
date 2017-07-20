module Forms

  class FormObject
    attr_reader :object
    def initialize(activerecord_instance)
      @object = activerecord_instance
    end

    def my_text_field(name_attribute)
      # we want it to break if there is no attribute/method

      html_name = object.class.to_s.downcase
      html = <<-HTML
        <input type="text" name="#{html_name}[#{name_attribute}]" id="#{html_name}_#{name_attribute}" value="#{object.send(name_attribute)}"/>
      HTML
      html.html_safe
    end
  end
end

# def form_for(activerecord_instance)
  # yield FormBuilder.new(activerecord_instance)
# end
# f = FormObject.new(@actor)
# f.text_field :name
# <input type="text" name="#{name_attribute}">
