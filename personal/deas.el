;; (require 'clojure-quick-repls)
;; File error: Cannot open load file, clojure-quick-repls

(setq prelude-guru nil)
(desktop-save-mode 1)

;; http://emacsredux.com/blog/2014/05/16/melpa-stable/
;; https://github.com/bbatsov/prelude/issues/674
;; (add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
;; Warning (emacs): Unable to activate package `cider'.
;; Required package `clojure-mode-2.0.0' is unavailable
;;  Warning (emacs): Unable to activate package `cider'.
;; Required package `clojure-mode-2.0.0' is unavailable
;; Warning (emacs): Unable to activate package `cider'.
;; Required package `clojure-mode-2.0.0' is unavailable
;; Warning (initialization): An error occurred while loading `/home/deas/.emacs.d/init.elc':

;; http://emacs.stackexchange.com/questions/8147/using-desktop-mode-with-emacs-daemon/8149
;; Kill emacs when running in daemon mode or not
;; Source: http://lists.gnu.org/archive/html/emacs-devel/2011-11/msg00348.html
;; (defun tv-stop-emacs ()
;;   (interactive)
;;   (if (daemonp)
;;       (save-buffers-kill-emacs)
;;     (save-buffers-kill-terminal)))
;;
;; (defun save-desktop-save-buffers-stop-emacs ()
;;   "Save buffers and current desktop every time when quitting emacs."
;;   (interactive)
;;   (desktop-save-in-desktop-dir)
;;   (tv-stop-emacs))
;;
;; (if desktop-save-mode
;;     (progn
;;       (global-set-key (kbd "C-x C-c") #'save-desktop-save-buffers-stop-emacs)
;;       (global-set-key (kbd "C-x M-c") #'tv-stop-emacs))
;;   (global-set-key (kbd "C-x C-c") #'tv-stop-emacs))

;; https://github.com/clojure-emacs/clj-refactor.el
;; (require 'clj-refactor)
;; (add-hook 'clojure-mode-hook (lambda ()
;;                                (clj-refactor-mode 1)
;;                                ;; insert keybinding setup here
;;
;;                               ))


;; https://www.gnu.org/software/emacs/manual/html_node/dbus/Signals.html

(defun my-dbus-signal-handler (device)
  (message "Device %s added" device))

(dbus-register-signal
 :system "org.freedesktop.Hal"
 "/org/freedesktop/Hal/Manager"
 "org.freedesktop.Hal.Manager"
 "DeviceAdded"
 'my-dbus-signal-handler)

;; https://github.com/clojure-emacs/clj-refactor.el
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               ;; insert keybinding setup here
))
