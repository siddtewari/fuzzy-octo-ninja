Zhouster::Application.routes.draw do
	constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboards#show'
  end

	root to: "homes#show"

	resource :dashboard, only: [:show]  
end
