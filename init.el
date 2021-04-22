;; Emacs config Tomas Cabrerizo
;; <tomascabrerizo97@gmail.com>

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


;;TODO(tomi) Delete this comment load theme
;;(load-theme 'tomi t)

;; set the font
(set-frame-font "Liberation Mono 12")

;; mute emcas
(setq ring-bell-function 'ignore)
;;(setq visible-bell -1)
;; set the indent style
(setq c-default-style "stroustrup"
          c-basic-offset 4)
;; disable backup files
(setq make-backup-files nil)
;; set initials buffers
(setq inhibit-startup-screen t
      initial-buffer-choice  nil)
;; Set up for Visual C++ compiling
(setq compile-command "mingw32-make")
;; not truncate line
(setq-default truncate-lines t)

;; ////////////////////KEY BINDINGS/////////////////////
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(global-set-key (kbd "M-f") 'find-file)
(global-set-key (kbd "M-F") 'find-file-other-window)

(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-k") 'kill-buffer)

(global-set-key (kbd "M-p") 'quick-calc)
(global-set-key (kbd "M-/") 'other-window)

(global-set-key (kbd "<f9>") 'first-error)
(global-set-key (kbd "<f10>") 'previous-error)
(global-set-key (kbd "<f11>") 'next-error)
(global-set-key (kbd "M-n") 'next-error)
(global-set-key (kbd "M-N") 'previous-error)
(global-set-key (kbd "M-l") 'goto-line)

(global-set-key (kbd "M-c") 'compile)

(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-right)

(global-set-key (kbd "M-b") 'switch-to-buffer)
(global-set-key (kbd "M-B") 'switch-to-buffer-other-window)

(global-set-key (kbd "<M-return>") 'dired-display-file)





;; ////////////////////THEME/////////////////////
(deftheme tomi
  "Created 2020-12-17.")

(custom-theme-set-faces
 'tomi
 '(cursor ((t (:background "#00ff00"))))

 '(default ((t (:inherit nil :extend nil :stipple nil 
		:background "#1c1d21" :foreground "#ccfccb" 
		:weight normal :width normal))))

 '(font-lock-constant-face ((t (:foreground "#00ff00"))))
 '(font-lock-string-face ((t (:foreground "#00ff00"))))

 '(font-lock-comment-face ((t (:foreground "#508991"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))

 '(font-lock-function-name-face ((t (:inherit default))))
 '(font-lock-variable-name-face ((t (:inherit default))))
 '(font-lock-preprocessor-face ((t (:inherit default))))
 '(font-lock-type-face ((t (:inherit default))))

 '(font-lock-keyword-face ((t (:foreground "#f2a359" :weight normal))))
)

(provide-theme 'tomi)
