class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        back = ProjectBacker.all.select do |project|
            project.backer == self
        end
        back.map do |project|
            project.project
        end
    end
end