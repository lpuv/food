require 'thor'
require 'food'
require 'food/generators/recipe'
module Food
	class CLI < Thor
		desc "portray ITEM", "Determines if a piece of food is gross or delicious"
		def portray(name)
  			puts Food.portray(name)
		end

		desc "pluralize", "Pluralizes a word"
		method_option :word, aliases: "-w"
		def pluralize
  			puts Food.pluralize(options[:word])
		end
		desc "recipe", "Generates a recipe scaffold"
		def recipe(group, name)
  			Generators::Recipe.start([group, name])
		end
	end
end