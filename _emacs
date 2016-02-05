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

;;���ô��ļ���ȱʡ·��
(setq default-directory "D:/")

(setq make-backup-files nil)
;; �趨�����������ļ�

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
;; ��������ʱ�ļ�

(setq visible-bell t)
;;�رշ��˵ĳ���ʱ����ʾ��

(setq inhibit-startup-message t)
;;�ر�emacs����ʱ�Ļ���

(setq gnus-inhibit-startup-message t)
;;�ر�gnus����ʱ�Ļ���

(fset 'yes-or-no-p 'y-or-n-p)
;; �ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no��


(set-scroll-bar-mode nil)
;;ȡ��������

(tool-bar-mode -1)
;;ȡ��������
(menu-bar-mode -1)   
;;ȥ���˵���

;;��Ļ���
(defun w32-restore-frame ()
    "Restore a minimized frame"
     (interactive)
     (w32-send-sys-command 61728))
(defun w32-maximize-frame ()
    "Maximize the current frame"
     (interactive)
     (w32-send-sys-command 61488))
(w32-maximize-frame)

;; ��������һЩ��ɫ���﷨������ʾ�ı��������⣬����ѡ��ı��������⣬����ѡ��ı�����ѡ��
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
;;��ʾ���к�
(global-linum-mode t)
(setq mouse-yank-at-point t)
;;��Ҫ����������Ǹ��ط�������������ݡ��Ҳ�ϲ���������������ҵ��ĵ����һ���㡣�Ҿ������ù�궨λ��Ȼ������м����Ҫ�õĶࡣ������Ĺ�����ĵ����Ǹ�λ�ã������� minibuffer������м�һ�����X selection �����ݾͱ����뵽�Ǹ�λ�á�


(show-paren-mode t)
;;������ƥ����ʾģʽ

(setq show-paren-style 'parenthesis)
;;����ƥ��ʱ���Ը�����ʾ����һ�ߵ����ţ�����겻�ᷳ�˵�������һ�����Ŵ���

(mouse-avoidance-mode 'animate)
;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�

(setq frame-title-format "Wanghailong@%b")
;;�ڱ�������ʾbuffer�����֣������� emacs@wangyin.com ����û�õ���ʾ��
;;------------���ڽ������ý���-----------------

;;------------��ʾʱ������------------------------------

(display-time-mode 1);;����ʱ����ʾ���ã���minibuffer������Ǹ�����
(setq display-time-24hr-format t);;ʱ��ʹ��24Сʱ��
(setq display-time-day-and-date t);;ʱ����ʾ�������ں;���ʱ��
(setq display-time-use-mail-icon t);;ʱ�����Ա������ʼ�����
(setq display-time-interval 10);;ʱ��ı仯Ƶ�ʣ���λ�������ţ�
(setq display-time-format "%Y-%m-%d (%a) %H:%M")
;;------------��ʾʱ�����ý���--------------

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
