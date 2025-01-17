class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files 
        files = []
        Dir.new(self.path).each { |file| files << file if file.end_with?(".mp3") }
        files
    end

    def import 
        self.files.each { |file| Song.new_by_filename(file) }
    end
end