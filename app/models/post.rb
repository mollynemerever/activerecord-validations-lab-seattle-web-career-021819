class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :is_clickbait

  def is_clickbait


    if title == nil || !title.include?("Won't Believe" ||  "Secret" || "Top" || "Guess") #returns true if clickbait otherwise false
        errors.add(:title, "this is NOT clickbait") #error to add if false
        #return false
    end


  end



end
