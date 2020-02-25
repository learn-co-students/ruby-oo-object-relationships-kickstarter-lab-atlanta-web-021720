class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        newBacker = ProjectBacker.new(self, backer)
        newBacker.project == self
    end
    def backers
        backerArray = []
        ProjectBacker.all.each do |pBIsta|
            if pBIsta.project == self
                backerArray << pBIsta.backer
            end
        end
        backerArray
    end
end