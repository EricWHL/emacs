;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       System config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setenv "HOME" "D:/emacs")
(setenv "PATH" "D:/emacs")

(require 'cc-mode)

(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;;; Emacs is not a package manager, and here we load its package manager!
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ;; TODO: Maybe, use this after emacs24 is released
                  ;; (development versions of packages)
                  ("melpa" . "http://melpa.milkbox.net/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

;---------------------autopair--------------------------
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;;; -------------------yasnippet-------------------------
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)


;;; -----------------auto complete mod------------------
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;------------------exec bin path------------------------
(setenv "PATH" (concat (getenv "PATH") "/bin"))
	(setq exec-path (append exec-path '("/bin")))
    ;(setq exec-path (append exec-path '("c:/Windows/System32")))
    ;(setq exec-path (append exec-path '("c:/cygwin/bin")))
;;------------------gtags config-------------------------
(require 'ggtags)
(add-hook 'c-mode-common-hook
(lambda ()
(when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
(ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
(define-key ggtags-mode-map (kbd "C-c g d") 'ggtags-find-definition)
(define-key ggtags-mode-map (kbd "C-c g g") 'ggtags-grep)
(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

;;color theme config

;;--------------windows config------------------
(set-foreground-color "grey")
(set-background-color "black")
(set-cursor-color "gold1")
(set-mouse-color "gold1")

;;设置打开文件的缺省路径
(setq default-directory "D:/")

(setq make-backup-files nil)
;; 设定不产生备份文件

;;tool-bar-mode null
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))


(setq-default make-backup-files nil)
;; 不生成临时文件

(setq visible-bell t)
;;关闭烦人的出错时的提示声

(setq inhibit-startup-message t)
;;关闭emacs启动时的画面

(setq gnus-inhibit-startup-message t)
;;关闭gnus启动时的画面

(fset 'yes-or-no-p 'y-or-n-p)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。


(set-scroll-bar-mode nil)
;;取消滚动栏

(tool-bar-mode -1)
;;取消工具栏
(menu-bar-mode -1)   
;;去掉菜单栏

;;屏幕最大化
(defun w32-restore-frame ()
    "Restore a minimized frame"
     (interactive)
     (w32-send-sys-command 61728))
(defun w32-maximize-frame ()
    "Maximize the current frame"
     (interactive)
     (w32-send-sys-command 61488))
(w32-maximize-frame)

;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(add-to-list 'load-path "D:/emacs/.emacs.d/theme")
(require 'color-theme-tangotango)
(color-theme-tangotango)

(setq column-number-mode t)
(setq line-number-mode t)
;;显示行列号
(global-linum-mode t)
(setq mouse-yank-at-point t)
;;不要在鼠标点击的那个地方插入剪贴板内容。我不喜欢那样，经常把我的文档搞的一团糟。我觉得先用光标定位，然后鼠标中键点击要好的多。不管你的光标在文档的那个位置，或是在 minibuffer，鼠标中键一点击，X selection 的内容就被插入到那个位置。


(show-paren-mode t)
;;打开括号匹配显示模式

(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。

(mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq frame-title-format "Wanghailong@%b")
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。
;;------------窗口界面设置结束-----------------

;;------------显示时间设置------------------------------

(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？
(setq display-time-format "%Y-%m-%d (%a) %H:%M")
;;------------显示时间设置结束--------------

(put 'dired-find-alternate-file 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       git tools                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;git-emacs
(add-to-list 'load-path "~/.emacs.d/git-emacs/")
(require 'git-emacs)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;       config cygwin tools              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/cygwin-config/")
;(require 'cygwin-mount)
;(cygwin-mount-activate)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; personal config
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/eric-config/")

(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; golden-ratio config
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'golden-ratio)
;;(golden-ratio-mode 1)

(require 'spaceline-config)
(spaceline-spacemacs-theme)

(defun windmove-up-cycle()
  (interactive)
  (condition-case nil (windmove-up)
    (error (condition-case nil (windmove-down)
         (error (condition-case nil (windmove-right) (error (condition-case nil (windmove-left) (error (windmove-up))))))))))

(defun windmove-down-cycle()
  (interactive)
  (condition-case nil (windmove-down)
    (error (condition-case nil (windmove-up)
         (error (condition-case nil (windmove-left) (error (condition-case nil (windmove-right) (error (windmove-down))))))))))

(defun windmove-right-cycle()
  (interactive)
  (condition-case nil (windmove-right)
    (error (condition-case nil (windmove-left)
         (error (condition-case nil (windmove-up) (error (condition-case nil (windmove-down) (error (windmove-right))))))))))

(defun windmove-left-cycle()
  (interactive)
  (condition-case nil (windmove-left)
    (error (condition-case nil (windmove-right)
         (error (condition-case nil (windmove-down) (error (condition-case nil (windmove-up) (error (windmove-left))))))))))

(global-set-key (kbd "C-x <up>") 'windmove-up-cycle)
(global-set-key (kbd "C-x <down>") 'windmove-down-cycle)
(global-set-key (kbd "C-x <right>") 'windmove-right-cycle)
(global-set-key (kbd "C-x <left>") 'windmove-left-cycle)
(global-set-key (kbd "<backtab>") #'(lambda ()
                                      (interactive)
                                      (switch-to-buffer (other-buffer (current-buffer) 1))))

(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
