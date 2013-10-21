;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get"
;;;;;;  "el-get/el-get.el" (21078 12939))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21078 12939))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (flyc/show-fly-error-at-point-pretty-soon flyc/show-fly-error-at-point-now)
;;;;;;  "flymake-cursor" "flymake-cursor/flymake-cursor.el" (21078
;;;;;;  16093))
;;; Generated autoloads from flymake-cursor/flymake-cursor.el

(autoload 'flyc/show-fly-error-at-point-now "flymake-cursor" "\
If the cursor is sitting on a flymake error, display
the error message in the  minibuffer.

\(fn)" t nil)

(autoload 'flyc/show-fly-error-at-point-pretty-soon "flymake-cursor" "\
If the cursor is sitting on a flymake error, grab the error,
and set a timer for \"pretty soon\". When the timer fires, the error
message will be displayed in the minibuffer.

This allows a post-command-hook to NOT cause the minibuffer to be
updated 10,000 times as a user scrolls through a buffer
quickly. Only when the user pauses on a line for more than a
second, does the flymake error message (if any) get displayed.

\(fn)" nil nil)

(eval-after-load "flymake" '(progn (defadvice flymake-goto-next-error (after flyc/display-message-1 activate compile) "Display the error in the mini-buffer rather than having to mouse over it" (flyc/show-fly-error-at-point-now)) (defadvice flymake-goto-prev-error (after flyc/display-message-2 activate compile) "Display the error in the mini-buffer rather than having to mouse over it" (flyc/show-fly-error-at-point-now)) (defadvice flymake-mode (before flyc/post-command-fn activate compile) "Add functionality to the post command hook so that if the\ncursor is sitting on a flymake error the error information is\ndisplayed in the minibuffer (rather than having to mouse over\nit)" (add-hook 'post-command-hook 'flyc/show-fly-error-at-point-pretty-soon t t))))

;;;***

;;;### (autoloads (smex-initialize smex) "smex" "smex/smex.el" (21078
;;;;;;  13656))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex" "\
Not documented

\(fn)" t nil)

(autoload 'smex-initialize "smex" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("el-get/el-get-autoloads.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el") (21078 16093 874648))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
