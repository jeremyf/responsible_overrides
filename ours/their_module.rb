# The goal of this file is to add/modify functionality to a low-level module.  The assumption is
# that when we `require "their_module"` this file will be found (and loaded) before we find the
# "original" their_module.
#
# We need to do three things:
#
# 1. Require the original "their_module"; this ensures we have it's full set of methods.
# 2. Create our own module with method definitions.
# 3. Prepend the decorating module to the original.
#
# This will ensure that classes that include the "TheirModule" will get the TheirModuleDecorator's
# modifications.
#
# In a Rails Engine envirionment, you can use:
#
# require Name::Engine.root.join("path/to/original")
#
# However, so as not to build a complete set of gems and engines, I'm doing approximations.  The
# main goal is to be more explicit about the required file's location.
require File.expand_path("../theirs/their_module", __dir__)
module OurTheirModuleDecorator
  def function_to_modify
    ["OurTheirModuleDecorator#function_to_modify", super].inspect
  end
end

TheirModule.prepend(OurTheirModuleDecorator)
