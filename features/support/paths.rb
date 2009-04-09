module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /the homepage/
      root_path
    when /the new intern_rules page/
      new_intern_rules_path

    when /the new intern_rules page/
      new_intern_rules_path

    
    # Add more page name => path mappings here
    when /the interns page/
    	interns_path
    when /the new intern page/
    	new_intern_path
    
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in features/support/paths.rb"
    end
  end
end

World do |world|
  world.extend NavigationHelpers
  world
end
