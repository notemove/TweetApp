class Post < ApplicationRecord
    # varidates :検証するカラム名, {検証する内容,     ,      ,   （複数可）}
    validates :content, {presence: true, length:{maximum:140}}
    
end
