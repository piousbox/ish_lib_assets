
module IshLibAssets
  class Engine < ::Rails::Engine
    isolate_namespace IshLibAssets
    config.to_prepare do
      # ApplicationController.helper(ActionView::Helpers::ApplicationHelper)
    end
  end
end
