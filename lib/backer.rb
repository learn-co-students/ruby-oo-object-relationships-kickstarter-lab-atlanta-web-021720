class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        related = ProjectBacker.all.select { |relationship| relationship.backer == self}
        related.map { |relationship| relationship.project}
    end

end