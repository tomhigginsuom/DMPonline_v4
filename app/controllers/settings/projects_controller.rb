module Settings
  class ProjectsController < SettingsController

    before_filter :get_plan_list_columns
    before_filter :get_settings

    def show
    end

    def update
      columns = (params[:columns] || {}).keys.map(&:intern)

      if @settings.update_attributes(columns: columns)
        respond_to do |format|
          format.html { redirect_to(projects_path) }
          format.json { @settings.to_json }
        end
      else
        render(action: :show) # Expect #show to display errors etc
      end
    end

  private

    def get_settings
      @settings = current_user.settings(:plan_list)
      # :name column should always be present (displayed as a disabled checkbox)
      # so it's not necessary to include it in the list here
      @all_columns -= [:name]
    end

  end
end
