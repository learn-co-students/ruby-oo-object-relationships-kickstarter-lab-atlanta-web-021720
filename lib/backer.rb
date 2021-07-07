class Backer 
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects 
        backs = ProjectBacker.all.select {|pb|pb.backer == self}
        backs.map {|back|back.project}
    end
end