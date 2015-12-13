;;; esh-groups.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "em-alias" "em-alias.el" "64fe29cd308815632a4337aa3c3afdf3")
;;; Generated autoloads from em-alias.el

(defgroup eshell-alias nil "\
Command aliases allow for easy definition of alternate commands." :tag "Command aliases" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-banner" "em-banner.el" "7c59d62aa5560b65ab82cc4b0f82685a")
;;; Generated autoloads from em-banner.el

(defgroup eshell-banner nil "\
This sample module displays a welcome banner at login.
It exists so that others wishing to create their own Eshell extension
modules may have a simple template to begin with." :tag "Login banner" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-basic" "em-basic.el" "258d7626f07e17c730c65a3cecbf8a38")
;;; Generated autoloads from em-basic.el

(defgroup eshell-basic nil "\
The \"basic\" code provides a set of convenience functions which
are traditionally considered shell builtins.  Since all of the
functionality provided by them is accessible through Lisp, they are
not really builtins at all, but offer a command-oriented way to do the
same thing." :tag "Basic shell commands" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-cmpl" "em-cmpl.el" "298c3e92a4e18d14ef88b1ec4572dfd0")
;;; Generated autoloads from em-cmpl.el

(defgroup eshell-cmpl nil "\
This module provides a programmable completion function bound to
the TAB key, which allows for completing command names, file names,
variable names, arguments, etc." :tag "Argument completion" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-dirs" "em-dirs.el" "6e769cc011ab326f988cc567c6166123")
;;; Generated autoloads from em-dirs.el

(defgroup eshell-dirs nil "\
Directory navigation involves changing directories, examining the
current directory, maintaining a directory stack, and also keeping
track of a history of the last directory locations the user was in.
Emacs does provide standard Lisp definitions of `pwd' and `cd', but
they lack somewhat in feel from the typical shell equivalents." :tag "Directory navigation" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-glob" "em-glob.el" "f5d59f4f293b1d2af54a00fdc2ce25d5")
;;; Generated autoloads from em-glob.el

(defgroup eshell-glob nil "\
This module provides extended globbing syntax, similar what is used
by zsh for filename generation." :tag "Extended filename globbing" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-hist" "em-hist.el" "382a8e6622cc3d76ddb0be0771765e30")
;;; Generated autoloads from em-hist.el

(defgroup eshell-hist nil "\
This module provides command history management." :tag "History list management" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-ls" "em-ls.el" "f8abe5f0bc38e28b834f64847aefce33")
;;; Generated autoloads from em-ls.el

(defgroup eshell-ls nil "\
This module implements the \"ls\" utility fully in Lisp.  If it is
passed any unrecognized command switches, it will revert to the
operating system's version.  This version of \"ls\" uses text
properties to colorize its output based on the setting of
`eshell-ls-use-colors'." :tag "Implementation of `ls' in Lisp" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-pred" "em-pred.el" "8d04eebd9764046aaa70e835c6ca91a6")
;;; Generated autoloads from em-pred.el

(defgroup eshell-pred nil "\
This module allows for predicates to be applied to globbing
patterns (similar to zsh), in addition to string modifiers which can
be applied either to globbing results, variable references, or just
ordinary strings." :tag "Value modifiers and predicates" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-prompt" "em-prompt.el" "59773c3bf264305bd1bb685b69ee8c91")
;;; Generated autoloads from em-prompt.el

(defgroup eshell-prompt nil "\
This module provides command prompts, and navigation between them,
as is common with most shells." :tag "Command prompts" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-rebind" "em-rebind.el" "ce603b6ea4506ba6a2ec88ccd4bb2e20")
;;; Generated autoloads from em-rebind.el

(defgroup eshell-rebind nil "\
This module allows for special keybindings that only take effect
while the point is in a region of input text.  By default, it binds
C-a to move to the beginning of the input text (rather than just the
beginning of the line), and C-p and C-n to move through the input
history, C-u kills the current input text, etc.  It also, if
`eshell-confine-point-to-input' is non-nil, does not allow certain
commands to cause the point to leave the input area, such as
`backward-word', `previous-line', etc.  This module intends to mimic
the behavior of normal shells while the user editing new input text." :tag "Rebind keys at input" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-script" "em-script.el" "edf778721e2cc43c0c74adc377d8ba98")
;;; Generated autoloads from em-script.el

(defgroup eshell-script nil "\
This module allows for the execution of files containing Eshell
commands, as a script file." :tag "Running script files." :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-smart" "em-smart.el" "bb334d26788f571b50a45cebe0fd8021")
;;; Generated autoloads from em-smart.el

(defgroup eshell-smart nil "\
This module combines the facility of normal, modern shells with
some of the edit/review concepts inherent in the design of Plan 9's
9term.  See the docs for more details.

Most likely you will have to turn this option on and play around with
it to get a real sense of how it works." :tag "Smart display of output" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-term" "em-term.el" "385c75bd79ed32913ded433c8aad4e4c")
;;; Generated autoloads from em-term.el

(defgroup eshell-term nil "\
This module causes visual commands (e.g., `vi') to be executed by
the `term' package, which comes with Emacs.  This package handles most
of the ANSI control codes, allowing curses-based applications to run
within an Emacs window.  The variable `eshell-visual-commands' defines
which commands are considered visual in nature." :tag "Running visual commands" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-tramp" "em-tramp.el" "a3ebec3f428a4cf717c053039a727f85")
;;; Generated autoloads from em-tramp.el

(defgroup eshell-tramp nil "\
This module defines commands that use TRAMP in a way that is
  not transparent to the user.  So far, this includes only the
  built-in su and sudo commands, which are not compatible with
  the full, external su and sudo commands, and require the user
  to understand how to use the TRAMP sudo method." :tag "TRAMP Eshell features" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-unix" "em-unix.el" "f22fb496fdfb92d1f780f38bb396fbbd")
;;; Generated autoloads from em-unix.el

(defgroup eshell-unix nil "\
This module defines many of the more common UNIX utilities as
aliases implemented in Lisp.  These include mv, ln, cp, rm, etc.  If
the user passes arguments which are too complex, or are unrecognized
by the Lisp variant, the external version will be called (if
available).  The only reason not to use them would be because they are
usually much slower.  But in several cases their tight integration
with Eshell makes them more versatile than their traditional cousins
\(such as being able to use `kill' to kill Eshell background processes
by name)." :tag "UNIX commands in Lisp" :group (quote eshell-module))

;;;***

;;;### (autoloads nil "em-xtra" "em-xtra.el" "2867c17a9d7bf13f0e9d70599ac0c94a")
;;; Generated autoloads from em-xtra.el

(defgroup eshell-xtra nil "\
This module defines some extra alias functions which are entirely
optional.  They can be viewed as samples for how to write Eshell alias
functions, or as aliases which make some of Emacs's behavior more
naturally accessible within Emacs." :tag "Extra alias functions" :group (quote eshell-module))

;;;***

(provide 'esh-groups)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; esh-groups.el ends here
