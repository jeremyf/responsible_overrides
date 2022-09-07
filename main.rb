# In this example, I will demonstrate how to override a method for a module that is included in an
# upstream dependency.
#
# We're adding to the $LOAD_PATHS such that we first look in the "ours" directory for the file/path
# we're requiring.  Then we look in the "theirs".  And finally everything else that Ruby includes by
# default.
["theirs", "ours"].each do |slug|
  $LOAD_PATH.prepend(File.expand_path(slug, __dir__))
end

require "their_class"

tc = TheirClass.new
puts tc.function_to_modify
puts tc.unaltered_function
