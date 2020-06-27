require 'pry'

class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end    
    def back_project(project)   
        ProjectBacker.new(project, self)
    end    
    def backed_projects
        people = ProjectBacker.all.select{|my_project| my_project.backer == self} 
        people.map{|myproject| myproject.project}        
    end    
end