" Language:     Vim blog RSS and index manager
" Author:       p4p1 aka Leo Smith

" Main function for the plugin
function Blog()
	let l:author = "p4p1"
	let l:blog_url="https://leosmith.xyz/blog/"
	let l:folder_name = expand("%:p:h:t")
	let l:file_name = expand("%:t")
	let l:postname = input("Enter the post name: ")
	let l:description = input("Enter description: ")
	let l:date = strftime('%a. %d %b %Y')
	let l:html = "          <li>\n            <p>" . l:date . " - <a href=\"" . l:file_name . "\">" . l:postname . "</a></p>\n          </li>"
	let l:xml = "\t\t<item>\n\t\t\t<title>" . l:postname . "</title>\n\t\t\t<author>" . l:author . "</author>\n\t\t\t<pubDate>" . l:date . "</pubDate>\n\t\t\t<link>" . l:blog_url . l:file_name . "</link>\n\t\t\t<description>" . l:description . "</description>\n\t\t</item>"

	if folder_name != "blog"
		echom l:description
		return
	endif
	if file_readable('../rss/blog.xml')
		:tabnew ./index.html
		/INSERT NEW POST HERE
		put=l:html
		:wq
		:tabnew ../rss/blog.xml
		/INSERT NEW POST HERE
		put=l:xml
		:wq
	endif
endfunction
