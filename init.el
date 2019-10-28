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
     (ivy :variables
          ivy-enable-advanced-buffer-information t)

     (treemacs :variables
               treemacs-use-follow-mode nil
               treemacs-use-filewatch-mode t)
     auto-completion
     better-defaults
     emacs-lisp
     git
     github
     version-control
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     (multiple-cursors :variables
                       multiple-cursors-backend 'mc)
     (org :variables
          org-enable-github-support t
          org-enable-bootstrap-support t
          org-projectile-file "~/Dropbox/org/PROJECTS.org"
          org-brain-path "~/Dropbox/org/brain"
          org-projectile-capture-template "* TODO %?\n  %a"
          org-enable-org-journal-support t
          org-journal-dir "~/Dropbox/org/journal"
          org-image-actual-width 500
          )
     (shell :variables
            shell-default-shell 'multi-term
            multi-term-program "/bin/bash"
            shell-default-height 30
            shell-default-position 'bottom)
     shell-scripts
     spell-checking
     syntax-checking
     copy-as-format
     search-engine
     (restclient :variables
                 restclient-use-org t)

     semantic
     lsp
     (dap :variables
          dap-python-executable "python3")
     (python :variables
             python-backend 'lsp
             python-lsp-server 'mspyls
             python-lsp-git-root "/home/ucizi/tmp/python-language-server"
             python-test-runner 'pytest
             python-formatter 'yapf
             python-format-on-save t
             py-isort-options '("-sl")
             pytest-cmd-flags "-x -s -vv"
             pytest-global-name "python3 -m pytest"
             python-sort-imports-on-save t
             python-auto-set-local-pyenv-version nil
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
     (java :variables
           java-backend 'lsp)
     (sql :variables sql-capitalize-keywords t)
     javascript
     haskell
     html
     json
     yaml
     csv
     pdf
     (groovy :variables groovy-indent-offset 2)
     nginx
     docker
     nixos
     )

   dotspacemacs-additional-packages '(
                                      exec-path-from-shell
                                      ascii-art-to-unicode
                                      ox-slack
                                      keychain-environment
                                      drag-stuff
                                      swap-regions
                                      yafolding
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
   dotspacemacs-editing-style 'emacs
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
   dotspacemacs-emacs-leader-key "M-SPC"
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
   dotspacemacs-folding-method 'origami
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "rg" "pt" "ack" "grep")
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

  (drag-stuff-global-mode 1)
  (setq-default shift-select-mode nil)
  (global-undo-tree-mode -1)
  (global-evil-surround-mode 1)

  (exec-path-from-shell-initialize)
  (keychain-refresh-environment)

  (spacemacs/declare-prefix "y" "copy")
  (spacemacs/declare-prefix "ys" "surround")
  (spacemacs/declare-prefix "yd" "drag-stuff")

  (spacemacs/set-leader-keys
    "yl" 'avy-copy-line
    "yr" 'avy-copy-region
    "ym" 'avy-move-line
    "yss" 'evil-surround-edit
    "ysd" 'evil-surround-delete
    "ysr" 'evil-surround-region
    "ysc" 'evil-surround-change
    "ydp" 'drag-stuff-up
    "ydn" 'drag-stuff-down
    "ydP" 'drag-stuff-left
    "ydN" 'drag-stuff-right)

  (spacemacs/set-leader-keys "se" 'iedit-mode)

  (use-package pytest
    :commands (pytest-run))
  (defun pyvenv-load-local-virtualenv ()
      (interactive)
      (spacemacs//pyvenv-mode-set-local-virtualenv)
      (revert-buffer t t))
  (spacemacs/set-leader-keys-for-major-mode 'python-mode
    "vr" 'pyvenv-load-local-virtualenv)

  (defvar pytest-unit-tests-dir "unit_tests"
    "Directory containing unit tests. Must be relative to projectile root")

  (defun pytest-run-marked-tests(marker-expression)
    (interactive(list(read-string "marker expression: ")))
    (pytest-all (concat pytest-cmd-flags (concat " -m '" marker-expression "'") )))
  (defun pytest-run-slow-tests()
    (interactive)
    (pytest-run pytest-unit-tests-dir (concat pytest-cmd-flags " -m slow")))
  (defun pytest-run-fast-tests()
    (interactive)
    (pytest-run pytest-unit-tests-dir (concat pytest-cmd-flags " -m 'not slow'")))
  (defun pytest-run-unit-tests()
    (interactive)
    (pytest-run pytest-unit-tests-dir pytest-cmd-flags))

  (spacemacs/declare-prefix-for-mode 'python-mode "mte" "test-extras")
  (spacemacs/set-leader-keys-for-major-mode 'python-mode
    "tes" 'pytest-run-slow-tests
    "teu" 'pytest-run-unit-tests
    "tef" 'pytest-run-fast-tests
    "tem" 'pytest-run-marked-tests)

  (add-hook 'python-mode-hook
            (lambda ()
              (local-set-key (kbd "C-<") 'python-indent-shift-left)
              (local-set-key (kbd "C->") 'python-indent-shift-right)))


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

  (defun eval-and-replace ()
    "Replace the preceding sexp with its value."
    (interactive)
    (backward-kill-sexp)
    (condition-case nil
        (prin1 (eval (read (current-kill 0)))
               (current-buffer))
      (error (message "Invalid expression")
             (insert (current-kill 0)))))

  (defun indent-buffer ()
    (interactive)
    (save-excursion
      (indent-region (point-min) (point-max) nil)))

  (add-hook 'org-mode-hook
            (lambda ()
              (cancel-function-timers 'org-indent-initialize-agent)))

)
