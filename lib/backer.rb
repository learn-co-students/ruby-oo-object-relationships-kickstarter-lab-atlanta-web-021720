class Backer
    attr_accessor :name, :project
    def initialize(name)
        @name = name
        @project = project
    end
    def back_project(project)
        newBack = ProjectBacker.new(project, self)
        newBack.backer == self
    end
    def backed_projects
        backedProjects = []
        ProjectBacker.all.each do |pBIsta|
            if pBIsta.backer == self
                backedProjects << pBIsta.project
            end
        end
        backedProjects
    end
end