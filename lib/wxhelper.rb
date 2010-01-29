module WxHelper

  # this method will load all file.rb files in our ui directory
	def WxHelper.include_ui
		ui = File.dirname(__FILE__) + "/../ui"
		Dir.foreach(ui) { |f|
			load "#{ui}/#{f}" if f[-3..-1] == '.rb'
		}
	end
  # use this method for setting up any configuration files/dirs for your program
  def WxHelper.setup_init
    # 
  end

end
