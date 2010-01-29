class GuiMain < XrcFrameMain

	def initialize
    
		super()
    
    # File Menu - new workspace
    evt_menu( @mb_fm_new, :on_new_workspace )
    # File Menu - close
    evt_menu( @mb_fm_exit, :on_exit )

    self.set_status_text("Idle...",0) 
    self.set_status_text(Time.now.strftime("%B %d, %Y"), 2)

	end

end

# File --> New
def on_new_workspace
  # define new workspace for each user - similar to profile.
end

# File --> Exit
def on_exit
  close
end

# Help --> About
def on_about
  Wx::about_box(
    :name => self.title,
    :version => "1.0",
    :description => "your program description"
  )
end

# Simple debug box
def debug_box(method, variable, value)
  Wx::about_box(:name => "Debug Process", :version => "1.0\n\n",
    :description => "Method = #{method}\nVariable = #{variable}\nValue = #{value}"
  )
end

#==============================================================================
#==============================================================================
# END
#==============================================================================
#==============================================================================