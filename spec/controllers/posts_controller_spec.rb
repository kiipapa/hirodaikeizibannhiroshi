require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    
    describe 'Get #sogonew' do
      before do
        get :sogonew
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
    end

    describe 'Post #sogocreate' do

      context '有効なパラメータの場合' do
        before do
          @post = attributes_for(:sogo)
        end
        it 'リクエストは302 リダイレクトとなること' do
          post :create, params: { post: @post }
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されること' do
          expect{
            post :create, params: {post: @post}
          }.to change(Post, :count).by(1)
        end
        it 'リダイレクトすること' do
          post :create, params: {post: @post}
          expect(response).to redirect_to ("/posts/sogoindex")
        end
      end

      context '無効なパラメータの場合' do
        before do
          @invalid_post = attributes_for(:invalid_sogo)
        end
        it 'リクエストは302 OKとなること' do
          post :create, params: {post: @invalid_post}
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されないこと' do
          expect{
            post :create, params: {post: @invalid_post}
          }.not_to change(Post, :count)
        end
        it ':sogonewテンプレートを再表示すること' do
          post :create, params: {post: @invalid_post}
          expect(response).to render_template :sogonew
        end
      end

    end

    describe 'Get #sogoindex' do
      before do
        @wanko = create(:sogo, content: "wanko")
        @nyanko = create(:sogo, content: "nyanko")
        get 'sogoindex'
      end
      it 'リクエストは302 OKとなること'  do
        expect(response.status).to eq 302
      end
      it '@postsにユニ１のユーザーを割り当てること' do
        expect(assigns(:posts)).to match_array([@wanko,@nyanko])
      end
    end


    describe 'Get #bunnew' do
      before do
        get :bunnew
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
    end

    describe 'Post #buncreate' do

      context '有効なパラメータの場合' do
        before do
          @post = attributes_for(:bun)
        end
        it 'リクエストは302 リダイレクトとなること' do
          post :create, params: { post: @post }
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されること' do
          expect{
            post :create, params: {post: @post}
          }.to change(Post, :count).by(1)
        end
        it 'リダイレクトすること' do
          post :create, params: {post: @post}
          expect(response).to redirect_to ("/posts/bunindex")
        end
      end

      context '無効なパラメータの場合' do
        before do
          @invalid_post = attributes_for(:invalid_bun)
        end
        it 'リクエストは302 OKとなること' do
          post :create, params: {post: @invalid_post}
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されないこと' do
          expect{
            post :create, params: {post: @invalid_post}
          }.not_to change(Post, :count)
        end
        it ':sogonewテンプレートを再表示すること' do
          post :create, params: {post: @invalid_post}
          expect(response).to render_template :bunnew
        end
      end

    end

    describe 'Get #bunindex' do
      before do
        @wanko = create(:bun, content: "wanko")
        @nyanko = create(:bun, content: "nyanko")
        get 'bunindex'
      end
      it 'リクエストは302 OKとなること'  do
        expect(response.status).to eq 302
      end
      it '@postsにユニ１のユーザーを割り当てること' do
        expect(assigns(:posts)).to match_array([@wanko,@nyanko])
      end
    end

    describe 'Get #igakunew' do
      before do
        get :igakunew
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
    end

    describe 'Post #igakucreate' do

      context '有効なパラメータの場合' do
        before do
          @post = attributes_for(:igaku)
        end
        it 'リクエストは302 リダイレクトとなること' do
          post :create, params: { post: @post }
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されること' do
          expect{
            post :create, params: {post: @post}
          }.to change(Post, :count).by(1)
        end
        it 'リダイレクトすること' do
          post :create, params: {post: @post}
          expect(response).to redirect_to ("/posts/igakuindex")
        end
      end

      context '無効なパラメータの場合' do
        before do
          @invalid_post = attributes_for(:invalid_igaku)
        end
        it 'リクエストは302 OKとなること' do
          post :create, params: {post: @invalid_post}
          expect(response.status).to eq 302
        end
        it 'データベースに新しいユーザーが登録されないこと' do
          expect{
            post :create, params: {post: @invalid_post}
          }.not_to change(Post, :count)
        end
        it ':sogonewテンプレートを再表示すること' do
          post :create, params: {post: @invalid_post}
          expect(response).to render_template :igakunew
        end
      end

    end

    describe 'Get #igakuindex' do
      before do
        @wanko = create(:igkau, content: "wanko")
        @nyanko = create(:igaku, content: "nyanko")
        get 'igakuindex'
      end
      it 'リクエストは302 OKとなること'  do
        expect(response.status).to eq 302
      end
      it '@postsにユニ１のユーザーを割り当てること' do
        expect(assigns(:posts)).to match_array([@wanko,@nyanko])
      end
    end

end
