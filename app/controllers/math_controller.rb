class MathController < ApplicationController
  def minus_form
      render({ :template => "math_templates/subtraction_form.html.erb"})
  end

  def minus_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second - @first

    render({ :template=> "math_templates/subtraction_results.html.erb"})
  end


  def add_form
    render({ :template => "math_templates/add_form.html.erb"})
  end

  def add_results
    @one = params.fetch("first_num").to_f
    @two = params.fetch("second_num").to_f
    @results = @one + @two
    render({ :template => "math_templates/add_results.html.erb"})
  end

  def multiply_form
    render({ :template => "math_templates/multiply_form.html.erb"})
  end

  def multiply_results
    @ok = params.fetch("first_num").to_f
    @alright = params.fetch("second_num").to_f
    @product = @ok * @alright
    render({ :template => "math_templates/multiply_results.html.erb"})
  end

end
