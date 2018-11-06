class StudentController < ApplicationController
  def attend_school
    @time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    @user = User.find_by_name("Ray")

  end

  def drop_school
    @time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end

  def attend_meeting
    puts "i am late for the meeting!"
  end

  def leave_classroom
    puts "classroom too many people, i have to leave!"
  end

  def go_bath
    puts "oh gosh, i have to go bath!"
  end

  def go_gym
    puts "do some gym everyday. makes you feel better day by day!"
  end

  def play_football
    puts "does anyone go play football with me?"
  end

  def play_basketball

  end

  def fall_in_love

  end

  def have_a_row_with_her

  end

end
