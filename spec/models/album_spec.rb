require 'rails_helper'




RSpec.describe Album, type: :model do
  
  let (:title) {'Divide'}
  let (:year) {'2017'}
  let (:album) {Album.new title: title, year: year}


  
  
  # before(:each) do 
  #   @album = Album.new(title: "divide", year: 2017)
  # end
  context 'title is nil' do
   let (:title) {nil}

    it 'is not valid without a title' do
      expect(album).to_not be_valid
    end

    it 'reports an error' do
      album.valid?
      expect(album.errors.full_messages).to include("Title can't be blank")
    end

  end

  context 'year is nil' do
    let (:year) {nil}
    it 'it not valid without a year' do
      expect(album).to_not be_valid
    end
    it 'reports an error' do
      album.valid?
      expect(album.errors.full_messages).to include("Year can't be blank")
    end
  end

  context 'title is more than 100 characters' do
    let (:title) {'divide' * 50}
    
    it 'is not valid with a title more than 100 chars' do
      expect(album).to_not be_valid
    end

    it 'reports an error' do
      album.valid?
      expect(album.errors.full_messages).to include("Title is too long (maximum is 100 characters)")
    end
  end
end
