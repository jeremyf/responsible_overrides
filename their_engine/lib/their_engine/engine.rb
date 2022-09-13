module TheirEngine
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :ModelBehavior
    autoload :Model
  end

  class Engine < ::Rails::Engine
    isolate_namespace TheirEngine
  end
end