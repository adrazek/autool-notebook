require_dependency "autool_notebook/application_controller"

module AutoolNotebook
  class NotebooksController < ApplicationController
    before_action :set_notebook, only: [:show, :edit, :update, :destroy]
    before_action :set_own_notebooks, only: [:show]
    layout "autool_notebook/layout", only: [:show]

    # GET /notebooks
    def index
      @notebooks = Notebook.where(:owner => current_user)
    end
    
    def new_user

    end

    # GET /notebooks/1
    def show
    end

    # GET /notebooks/new
    def new
      @notebook = Notebook.new
    end

    # GET /notebooks/1/edit
    def edit
    end

    # POST /notebooks
    def create
      @notebook = Notebook.new(notebook_params)
      @notebook.owner = current_user
      @notebook.title = translate("notebooks.defaultTitle", {:username => @notebook.target.firstname})

      if @notebook.save
        redirect_to @notebook, notice: 'Notebook was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /notebooks/1
    def update
      if @notebook.update(notebook_params)
        redirect_to @notebook, notice: 'Notebook was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /notebooks/1
    def destroy
      @notebook.destroy
      redirect_to notebooks_url, notice: 'Notebook was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_notebook
        @notebook = Notebook.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def notebook_params
        params.require(:notebook).permit(:title, :target_id)
      end

      def set_own_notebooks
        @own_notebooks = Notebook.where(owner: current_user)
      end
  end
end
