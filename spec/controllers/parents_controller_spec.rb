require 'spec_helper'
require 'factory_girl'

describe ParentsController do
	render_views

	describe 'GET#index' do 

		it 'renders the :index view' do
			get :index
			expect(response).to render_template :index 
		end
	end

	describe 'GET#show' do
		before :each do 
			@parent = FactoryGirl.create(:parent)
			get :show, id: @parent
		end 

		it { response.should be_success }
		it { expect(response).to render_template :show } 
	end

	describe 'Parent#create' do 

		context 'with valid attributes' do

			it "saves the new parent in the database" do
				expect{post :create, parent: attributes_for(:parent)
				}.to change(Parent, :count).by(1)
			end

			it 'redirects to parent show view' do 
				post :create, parent: FactoryGirl.attributes_for(:parent)
				expect(response).to redirect_to parent_path(assigns[:parent])
			end 
		end
	

		context "with invalid attributes" do
			it "does not save the new parent in the database" do
				expect{post :create, parent: attributes_for(:invalid_parent)
											 }.to_not change(Parent, :count)
			end

			it "re-renders the :new template" do
				post :create, parent: attributes_for(:invalid_parent)
				expect(response).to render_template :new
			end
		end
	end

	describe 'PATCH #update' do
		before :each do
			@parent = create(:parent,
			first_name: 'Lawrence', last_name: 'Smith')
		end
	
		context "valid attributes" do
			it "locates the requested @parent" do
				patch :update, id: @parent, parent: attributes_for(:parent)
				expect(assigns(:parent)).to eq(@parent)
			end

			it "changes @parent's attributes" do
				patch :update, id: @parent, parent: attributes_for(:parent,
								first_name: "Larry", last_name: "Smith")
				@parent.reload
				expect(@parent.first_name).to eq("Larry")
				expect(@parent.last_name).to eq("Smith")
			end

			it "redirects to the updated parent" do
				patch :update, id: @parent, parent: attributes_for(:parent)
				expect(response).to redirect_to @parent
			end
		end

		context "with invalid attributes" do
			it "does not change the parent's attributes" do
				patch :update, id: @parent, parent: attributes_for(:parent,
											first_name: "Larry", last_name: nil)
				@parent.reload
				expect(@parent.first_name).to_not eq("Larry")
				expect(@parent.last_name).to eq("Smith")
			end

			it "re-renders the edit template" do
				patch :update, id: @parent, parent: attributes_for(:invalid_parent)
				expect(response).to render_template :edit
			end
		end
	end

	describe 'DELETE #destroy' do
		before :each do
			@parent = create(:parent)
		end

		it "deletes the parent" do
			expect{delete :destroy, id: @parent}.to change(Parent,:count).by(-1)
		end

		it "redirects to parents#index" do
			delete :destroy, id: @parent
			expect(response).to redirect_to parents_url
		end
	end
end