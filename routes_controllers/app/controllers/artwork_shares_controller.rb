class ArtworkSharesController < ApplicationController

    def destroy
        @shares = ArtworkShare.find(params[:id])
        @shares.destroy
        render json: @shares
    end

    def create
        @shares = ArtworkShare.new(share_params)
        if @shares.save
            render json: @shares
        else 
            render json: @shares.errors.full_messages, status: 422
        end
    end

    private

    def share_params
        params.require(:share).permit(:artwork_id, :viewer_id)
    end

end