((auctex status "required" recipe nil)
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (flymake-cursor status "installed" recipe
		 (:name flymake-cursor :auto-generated t :type emacswiki :description "displays flymake error msg in minibuffer after delay" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/flymake-cursor.el"))
 (popup status "required" recipe nil)
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
	      (smex-initialize))))
