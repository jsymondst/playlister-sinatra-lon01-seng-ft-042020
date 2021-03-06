class SongGenre < ActiveRecord::Base
    belongs_to :song
    belongs_to :genre

    def slug
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end

end
