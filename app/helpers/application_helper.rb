module ApplicationHelper
	def markdown text
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
		 a = markdown.render(text)
		return  a.html_safe
	end
end
