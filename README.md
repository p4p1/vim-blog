# vim-blog
A simple vim pluggin for working on my blog.

![new post name](https://raw.githubusercontent.com/p4p1/vim-blog/master/assets/new-post-name.png)

![new post desc](https://raw.githubusercontent.com/p4p1/vim-blog/master/assets/new-post-desc.png)

![save post](https://raw.githubusercontent.com/p4p1/vim-blog/master/assets/new-post-save.png)

## Instalation
Using vim [Plug](https://github.com/junegunn/vim-plug):
```vim
call plug#begin('~/.vim/plugged')
Plug 'p4p1/vim-blog'
call plug#end()
```

Add those following line to your vimrc:
```vim
" Set important blog information
let g:blog_author = "{your name}"
let g:blog_url = "https://{yoururl}/{postpath}/"

" Run the plugin on new html file
autocmd BufNewFile *.html call Blog_update_rss_html()
```

Add this comment to the rss feed you want to update and the index file with all
of the blog posts:
```html
<!-- INSERT NEW POST HERE -->
```

## Blog structure
```
blog_root
├── blog
│   ├── blog_posts.html # the blog post you are working on
│   ├── ...
│   └── index.html # The index file with all of your blog posts
└── rss
    └── blog.xml # the rss feed you want to update
```
