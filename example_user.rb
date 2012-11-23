class User
	attr_accessor :name, :email

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end

def string_shuffle(s)
	s.split('').shuffle.join
end

p string_shuffle("foobar")

class String
	def shuffle
		self.split('').shuffle.join
	end
end

p "mogeaiacx".shuffle


params = Hash.new(120)
params [:father]={:first=>"TAKEDA", :last=>"TAKAO"}
params [:mother]={:first=>"UMEKO", :last=>"YUKIGAE"}
params [:child]={:first=>"BAR", :last=>"FOO"}

p params[:brother]
p params[:father][:first]
p params[:father][:last]
p params[:mother][:first]
p params[:mother][:last]
p params[:child][:first]
p params[:child][:last]

params.each do |member,value|
	p member
	value.each do |key, val2|
		print key
		print ' , '
		p val2
	end
	#p params[member][:first]
	#p params[member][:last]
end
