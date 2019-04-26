;; -*- mode: emacs-lisp; lexical-binding: t -*-

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(
     helm
     fasd
     ranger
     (treemacs :variables
               treemacs-use-follow-mode nil
               treemacs-use-filewatch-mode t)
     bm
     auto-completion
     better-defaults
     emacs-lisp
     git
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     pdf
     multiple-cursors
     treemacs
     (org :variables
          org-enable-github-support t
          org-enable-bootstrap-support t
          org-projectile-file "~/Dropbox/org/PROJECTS.org"
          org-brain-path "~/Dropbox/org/brain"
          org-projectile-capture-template "* TODO %?\n  %a")
     (shell :variables
            shell-default-shell 'multi-term
            shell-default-height 30
            shell-default-position 'bottom)
     shell-scripts
     spell-checking
     syntax-checking
     version-control
     chrome
     copy-as-format
     themes-megapack
     ibuffer
     imenu-list
     search-engine
     restclient

     lsp
     (dap :variables
          dap-python-executable "python3")
     (python :variables
             python-backend 'lsp
             python-test-runner 'pytest
             python-enable-yapf-format-on-save t
             python-auto-set-local-pyvenv-virtualenv nil)
     (cmake :variables cmake-enable-cmake-ide-support t)
     (c-c++ :variables
            lsp-ui-sideline-enable nil
            c-c++-adopt-subprojects t
            c-c++-backend 'lsp-ccls
            c-c++-lsp-executable "/home/ucizi/bin/ccls"
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-format-on-save t
            clang-format-style "Google"
            c-c++-enable-google-style t
            c-c++-enable-google-newline t)
     (sql :variables sql-capitalize-keywords t)
     lua
     html
     json
     )

   dotspacemacs-additional-packages '(
                                      exec-path-from-shell
                                      ascii-art-to-unicode
                                      )

   dotspacemacs-frozen-packages '()

   dotspacemacs-excluded-packages '()

   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives nil
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'fundamental-mode
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-generate-layout-names nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   dotspacemacs-frame-title-format "%t::%b"
   dotspacemacs-icon-title-format nil
   dotspacemacs-whitespace-cleanup 'all
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq custom-file "~/.spacemacs.d/custom.el")
  (write-region "" "" custom-file t)
  (load custom-file)
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (exec-path-from-shell-initialize)
  (setq pytest-global-name "python3 -m pytest")

  (load-file "~/.spacemacs.d/private/gtest-mode.el")
  (setq gtest-run-in-test-directory t)
  (add-hook 'c++-mode-hook 'gtest-mode)

  (spacemacs/declare-prefix-for-mode 'c++-mode "mt" "gtest")
  (spacemacs/set-leader-keys-for-minor-mode 'gtest-mode "ta" 'gtest-run-all)
  (spacemacs/set-leader-keys-for-minor-mode 'gtest-mode "tt" 'gtest-run)

  (defun copy-compile-commands (&optional compilation-buffer result)
    (interactive)
    (copy-file
     (concat cmake-ide-build-dir "/compile_commands.json")
     (concat cmake-ide-project-dir "/compile_commands.json")
     t)
    )

  (add-hook 'yas-minor-mode-hook 'electric-pair-local-mode)

  (add-to-list 'auto-mode-alist '("\\lfrc\\'" . conf-mode))

  ;; use unicode art for org-brain
  (defface aa2u-face '((t . nil))
    "Face for aa2u box drawing characters")
  (advice-add #'aa2u-1c :filter-return
              (lambda (str) (propertize str 'face 'aa2u-face)))
  (defun aa2u-org-brain-buffer ()
    (let ((inhibit-read-only t))
      (make-local-variable 'face-remapping-alist)
      (add-to-list 'face-remapping-alist
                   '(aa2u-face . org-brain-wires))
      (ignore-errors (aa2u (point-min) (point-max)))))
  (with-eval-after-load 'org-brain
    (add-hook 'org-brain-after-visualize-hook #'aa2u-org-brain-buffer))

  ;; helm tab completion when treemacs is open
  (with-eval-after-load "helm"
    (defun helm-persistent-action-display-window (&optional split-onewindow)
      "Return the window that will be used for persistent action.
If SPLIT-ONEWINDOW is non-`nil' window is split in persistent action."
      (with-helm-window
        (setq helm-persistent-action-display-window (get-mru-window)))))
  )
