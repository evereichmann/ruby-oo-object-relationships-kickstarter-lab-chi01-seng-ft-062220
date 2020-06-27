class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title 
        @@all << self
    end
    def self.all
        @@all
    end    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 
    def backers
        this_project = ProjectBacker.all.select{|thisproject| thisproject.project == self}
        this_project.map{|whos_funding| whos_funding.backer} 
    end    
end