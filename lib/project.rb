class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        related = ProjectBacker.all.select { |relationship| 
            relationship.project == self
        }
        related.map { |relationship| relationship.backer}
    end

end