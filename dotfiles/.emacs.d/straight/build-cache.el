
:tanat

"26.3"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2020-10-25 14:22:24" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2020-10-25 14:22:24" nil (:type git :host github :repo "melpa/melpa" :no-build t :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2020-10-25 14:22:24" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :no-build t :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "emacsmirror-mirror" ("2020-10-25 14:22:24" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :no-build t :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2020-10-25 14:22:24" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "use-package" ("2020-10-25 14:22:24" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2020-10-25 14:22:24" nil (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "attrap" ("2020-10-25 14:22:24" ("dash" "emacs" "f" "flycheck" "s") (:type git :flavor melpa :host github :repo "jyp/attrap" :package "attrap" :local-repo "attrap")) "dash" ("2020-10-25 14:22:24" nil (:type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el" :package "dash" :local-repo "dash.el")) "f" ("2020-10-25 14:22:24" ("s" "dash") (:type git :flavor melpa :files ("f.el" "f-pkg.el") :host github :repo "rejeep/f.el" :package "f" :local-repo "f.el")) "s" ("2020-10-25 14:22:24" nil (:type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el" :package "s" :local-repo "s.el")) "flycheck" ("2020-10-25 14:22:24" ("dash" "pkg-info" "let-alist" "seq" "emacs") (:type git :flavor melpa :host github :repo "flycheck/flycheck" :package "flycheck" :local-repo "flycheck")) "pkg-info" ("2020-10-25 14:22:24" ("epl") (:type git :flavor melpa :host github :repo "emacsorphanage/pkg-info" :package "pkg-info" :local-repo "pkg-info")) "epl" ("2020-10-25 14:22:24" ("cl-lib") (:type git :flavor melpa :host github :repo "cask/epl" :package "epl" :local-repo "epl")) "let-alist" ("2020-10-25 14:22:24" ("emacs") (:type git :host github :repo "emacs-straight/let-alist" :files ("*" (:exclude ".git")) :package "let-alist" :local-repo "let-alist")) "dante" ("2020-10-25 14:22:24" ("dash" "emacs" "f" "flycheck" "company" "haskell-mode" "s" "lcr") (:type git :flavor melpa :host github :repo "jyp/dante" :package "dante" :local-repo "dante")) "company" ("2020-10-25 14:22:24" ("emacs") (:type git :flavor melpa :host github :repo "company-mode/company-mode" :package "company" :local-repo "company-mode")) "haskell-mode" ("2020-10-25 14:22:24" ("emacs") (:type git :flavor melpa :files (:defaults "NEWS" "logo.svg" "haskell-mode-pkg.el") :host github :repo "haskell/haskell-mode" :package "haskell-mode" :local-repo "haskell-mode")) "lcr" ("2020-10-25 14:22:24" ("dash" "emacs") (:type git :flavor melpa :host github :repo "jyp/lcr" :package "lcr" :local-repo "lcr")) "smex" ("2020-10-25 14:22:24" ("emacs") (:type git :flavor melpa :host github :repo "nonsequitur/smex" :package "smex" :local-repo "smex")) "gruber-darker-theme" ("2020-10-25 14:22:24" nil (:type git :flavor melpa :host github :repo "rexim/gruber-darker-theme" :package "gruber-darker-theme" :local-repo "gruber-darker-theme")) "nix-mode" ("2020-10-25 14:22:24" ("emacs") (:type git :flavor melpa :files (:defaults (:exclude "nix-company.el" "nix-mode-mmm.el") "nix-mode-pkg.el") :host github :repo "NixOS/nix-mode" :package "nix-mode" :local-repo "nix-mode"))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight-autoloads straight straight-x) (autoload (quote straight-get-recipe) "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload (quote straight-visit-package-website) "straight" "Interactively select a recipe, and visit the package's website.

(fn)" t nil) (autoload (quote straight-use-package) "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a non-nil `:no-build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload (quote straight-register-package) "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-no-build) "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-lazy) "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-recipes) "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a non-nil `:no-build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-override-recipe) "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-check-package) "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload (quote straight-check-all) "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init.

(fn)" t nil) (autoload (quote straight-rebuild-package) "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload (quote straight-rebuild-all) "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'.

(fn)" t nil) (autoload (quote straight-prune-build-cache) "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.

(fn)" nil nil) (autoload (quote straight-prune-build-directory) "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.

(fn)" nil nil) (autoload (quote straight-prune-build) "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted.

(fn)" t nil) (autoload (quote straight-normalize-package) "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-normalize-all) "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-fetch-package) "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-package-and-deps) "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-all) "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-merge-package) "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-package-and-deps) "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-all) "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-pull-package) "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-package-and-deps) "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-all) "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-push-package) "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-push-all) "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-freeze-versions) "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload (quote straight-thaw-versions) "straight" "Read version lockfiles and restore package versions to those listed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight" (quote ("straight-")))) (defvar straight-x-pinned-packages nil "List of pinned packages.") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight-x" (quote ("straight-x-")))) (provide (quote straight-autoloads))) "bind-key" ((bind-key bind-key-autoloads) (autoload (quote bind-key) "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

  (bind-key \"M-h\" #'some-interactive-function 'my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload (quote unbind-key) "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload (quote bind-key*) "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload (quote bind-keys) "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload (quote bind-keys*) "bind-key" "

(fn &rest ARGS)" nil t) (autoload (quote describe-personal-keybindings) "bind-key" "Display all the personal keybindings defined by `bind-key'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "bind-key" (quote ("compare-keybindings" "get-binding-description" "bind-key" "personal-keybindings" "override-global-m")))) (provide (quote bind-key-autoloads))) "use-package" ((use-package-bind-key use-package-diminish use-package-jump use-package-core use-package-ensure use-package-autoloads use-package-delight use-package-lint use-package) (autoload (quote use-package-autoload-keymap) "use-package-bind-key" "Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil) (autoload (quote use-package-normalize-binder) "use-package-bind-key" "

(fn NAME KEYWORD ARGS)" nil nil) (defalias (quote use-package-normalize/:bind) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind*) (quote use-package-normalize-binder)) (defalias (quote use-package-autoloads/:bind) (quote use-package-autoloads-mode)) (defalias (quote use-package-autoloads/:bind*) (quote use-package-autoloads-mode)) (autoload (quote use-package-handler/:bind) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil) (defalias (quote use-package-normalize/:bind-keymap) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind-keymap*) (quote use-package-normalize-binder)) (autoload (quote use-package-handler/:bind-keymap) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil) (autoload (quote use-package-handler/:bind-keymap*) "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-bind-key" (quote ("use-package-handler/:bind*")))) (autoload (quote use-package) "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Delay the use-package declaration until after the named modules
                 have loaded. Once load, it will be as though the use-package
                 declaration (without `:after') had been seen at that moment.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put (quote use-package) (quote lisp-indent-function) (quote 1)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-core" (quote ("use-package-")))) (autoload (quote use-package-normalize/:delight) "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:delight) "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-delight" (quote ("use-package-normalize-delight")))) (autoload (quote use-package-normalize/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-diminish" (quote ("use-package-normalize-diminish")))) (autoload (quote use-package-normalize/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-ensure" (quote ("use-package-")))) (autoload (quote use-package-jump-to-package-form) "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

(fn PACKAGE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-jump" (quote ("use-package-find-require")))) (autoload (quote use-package-lint) "use-package-lint" "Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-lint" (quote ("use-package-lint-declaration")))) (provide (quote use-package-autoloads))) "dash" ((dash-autoloads dash) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "dash" (quote ("dash-" "-keep" "-butlast" "-non" "-only-some" "-zip" "-e" "->" "-a" "-gr" "-when-let" "-d" "-l" "-s" "-p" "-r" "-m" "-i" "-f" "-u" "-value-to-list" "-t" "--" "-c" "!cons" "!cdr")))) (provide (quote dash-autoloads))) "s" ((s s-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "s" (quote ("s-")))) (provide (quote s-autoloads))) "f" ((f-autoloads f) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "f" (quote ("f-")))) (provide (quote f-autoloads))) "epl" ((epl-autoloads epl) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "epl" (quote ("epl-")))) (provide (quote epl-autoloads))) "pkg-info" ((pkg-info-autoloads pkg-info) (autoload (quote pkg-info-library-original-version) "pkg-info" "Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

(fn LIBRARY &optional SHOW)" t nil) (autoload (quote pkg-info-library-version) "pkg-info" "Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

(fn LIBRARY &optional SHOW)" t nil) (autoload (quote pkg-info-defining-library-original-version) "pkg-info" "Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

(fn FUNCTION &optional SHOW)" t nil) (autoload (quote pkg-info-defining-library-version) "pkg-info" "Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

(fn FUNCTION &optional SHOW)" t nil) (autoload (quote pkg-info-package-version) "pkg-info" "Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

(fn PACKAGE &optional SHOW)" t nil) (autoload (quote pkg-info-version-info) "pkg-info" "Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

(fn LIBRARY &optional PACKAGE SHOW)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pkg-info" (quote ("pkg-info-")))) (provide (quote pkg-info-autoloads))) "let-alist" ((let-alist-autoloads let-alist) (autoload (quote let-alist) "let-alist" "Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

(fn ALIST &rest BODY)" nil t) (function-put (quote let-alist) (quote lisp-indent-function) (quote 1)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "let-alist" (quote ("let-alist--")))) (provide (quote let-alist-autoloads))) "flycheck" ((flycheck-autoloads flycheck-ert flycheck flycheck-buttercup) (autoload (quote flycheck-manual) "flycheck" "Open the Flycheck manual.

(fn)" t nil) (autoload (quote flycheck-mode) "flycheck" "Flycheck is a minor mode for on-the-fly syntax checking.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

If you run into issues, use `\\[flycheck-verify-setup]' to get help.

Flycheck supports many languages out of the box, and many
additional ones are available on MELPA.  Adding new ones is very
easy.  Complete documentation is available online at URL
`https://www.flycheck.org/en/latest/'.  Please report issues and
request features at URL `https://github.com/flycheck/flycheck'.

Flycheck displays its status in the mode line.  In the default
configuration, it looks like this:

`FlyC'     This buffer has not been checked yet.
`FlyC-'    Flycheck doesn't have a checker for this buffer.
`FlyC*'    Flycheck is running.  Expect results soon!
`FlyC:3|2' This buffer contains three warnings and two errors.
           Use `\\[flycheck-list-errors]' to see the list.

You may also see the following icons:
`FlyC!'    The checker crashed.
`FlyC.'    The last syntax check was manually interrupted.
`FlyC?'    The checker did something unexpected, like exiting with 1
           but returning no errors.

The following keybindings are available in `flycheck-mode':

\\{flycheck-mode-map}
(you can change the prefix by customizing
`flycheck-keymap-prefix')

If called interactively, enable Flycheck mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is \342\200\230toggle\342\200\231; disable the mode otherwise.

(fn &optional ARG)" t nil) (defvar global-flycheck-mode nil "Non-nil if Global Flycheck mode is enabled.
See the `global-flycheck-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.") (custom-autoload (quote global-flycheck-mode) "flycheck" nil) (autoload (quote global-flycheck-mode) "flycheck" "Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

(fn &optional ARG)" t nil) (autoload (quote flycheck-define-error-level) "flycheck" "Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0; info is -10, warning is 10, and
     error is 100.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:compilation-level LEVEL'

     A number indicating the broad class of messages that errors
     at this level belong to: one of 0 (info), 1 (warning), or
     2 or nil (error).  Defaults to nil.

     This is used by `flycheck-checker-pattern-to-error-regexp'
     to map error levels into `compilation-mode''s hierarchy and
     to get proper highlighting of errors in `compilation-mode'.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Another useful
     property for error level categories is `priority', to
     influence the stacking of multiple error level overlays.

`:fringe-bitmap BITMAPS'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level, or a cons of two bitmaps (one for
     narrow fringes and one for wide fringes).  See Info node
     `(elisp)Fringe Bitmaps' for more information about fringe
     bitmaps, including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:margin-spec SPEC'
     A display specification indicating what to display in the
     margin when `flycheck-indication-mode' is `left-margin' or
     `right-margin'.  See Info node `(elisp)Displaying in the
     Margins'.  If omitted, Flycheck generates an image spec from
     the fringe bitmap.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

(fn LEVEL &rest PROPERTIES)" nil nil) (function-put (quote flycheck-define-error-level) (quote lisp-indent-function) (quote 1)) (autoload (quote flycheck-define-command-checker) "flycheck" "Define SYMBOL as syntax checker to run a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

`:standard-input t'
     Whether to send the buffer contents on standard input.

     If this property is given and has a non-nil value, send the
     contents of the buffer on standard input.

     Defaults to nil.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, though, whose results will be appended to the
default `:verify' function of command checkers.

(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil) (function-put (quote flycheck-define-command-checker) (quote lisp-indent-function) (quote 1)) (function-put (quote flycheck-define-command-checker) (quote doc-string-elt) (quote 2)) (autoload (quote flycheck-def-config-file-var) "flycheck" "Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide configuration files for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.  It can be either a string or a list of
strings.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t) (function-put (quote flycheck-def-config-file-var) (quote lisp-indent-function) (quote 3)) (autoload (quote flycheck-def-option-var) "flycheck" "Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKERS (a checker or a
list of checkers).  INIT-VALUE is the initial value of the
variable, and DOCSTRING is its docstring.  CUSTOM-ARGS are
forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

(fn SYMBOL INIT-VALUE CHECKERS DOCSTRING &rest CUSTOM-ARGS)" nil t) (function-put (quote flycheck-def-option-var) (quote lisp-indent-function) (quote 3)) (function-put (quote flycheck-def-option-var) (quote doc-string-elt) (quote 4)) (autoload (quote flycheck-define-checker) "flycheck" "Define SYMBOL as command syntax checker with DOCSTRING and PROPERTIES.

Like `flycheck-define-command-checker', but PROPERTIES must not
be quoted.  Also, implicitly define the executable variable for
SYMBOL with `flycheck-def-executable-var'.

(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil t) (function-put (quote flycheck-define-checker) (quote lisp-indent-function) (quote 1)) (function-put (quote flycheck-define-checker) (quote doc-string-elt) (quote 2)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "flycheck" (quote ("flycheck-" "list-flycheck-errors" "help-flycheck-checker-d")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "flycheck-buttercup" (quote ("flycheck-buttercup-format-error-list")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "flycheck-ert" (quote ("flycheck-er")))) (provide (quote flycheck-autoloads))) "attrap" ((attrap attrap-autoloads) (autoload (quote attrap-flymake) "attrap" "Attempt to repair the flymake error at POS.

(fn POS)" t nil) (autoload (quote attrap-flycheck) "attrap" "Attempt to repair the flycheck error at POS.

(fn POS)" t nil) (autoload (quote attrap-attrap) "attrap" "Attempt to repair the error at POS.

(fn POS)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "attrap" (quote ("attrap-")))) (provide (quote attrap-autoloads))) "company" ((company-gtags company-elisp company-yasnippet company-capf company-template company-semantic company-etags company-dabbrev company-keywords company-nxml company-autoloads company-bbdb company company-css company-cmake company-tng company-oddmuse company-tempo company-clang company-dabbrev-code company-abbrev company-files company-ispell) (autoload (quote company-mode) "company" "\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

(fn &optional ARG)" t nil) (defvar global-company-mode nil "Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.") (custom-autoload (quote global-company-mode) "company" nil) (autoload (quote global-company-mode) "company" "Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

(fn &optional ARG)" t nil) (autoload (quote company-manual-begin) "company" "

(fn)" t nil) (autoload (quote company-complete) "company" "Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company" (quote ("company-")))) (autoload (quote company-abbrev) "company-abbrev" "`company-mode' completion backend for abbrev.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-abbrev" (quote ("company-abbrev-insert")))) (autoload (quote company-bbdb) "company-bbdb" "`company-mode' completion backend for BBDB.

(fn COMMAND &optional ARG &rest IGNORE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-bbdb" (quote ("company-bbdb-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-capf" (quote ("company-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-clang" (quote ("company-clang")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-cmake" (quote ("company-cmake")))) (autoload (quote company-css) "company-css" "`company-mode' completion backend for `css-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-css" (quote ("company-css-")))) (autoload (quote company-dabbrev) "company-dabbrev" "dabbrev-like `company-mode' completion backend.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-dabbrev" (quote ("company-dabbrev-")))) (autoload (quote company-dabbrev-code) "company-dabbrev-code" "dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-dabbrev-code" (quote ("company-dabbrev-code-")))) (autoload (quote company-elisp) "company-elisp" "`company-mode' completion backend for Emacs Lisp.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-elisp" (quote ("company-elisp-")))) (autoload (quote company-etags) "company-etags" "`company-mode' completion backend for etags.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-etags" (quote ("company-etags-")))) (autoload (quote company-files) "company-files" "`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-files" (quote ("company-file")))) (autoload (quote company-gtags) "company-gtags" "`company-mode' completion backend for GNU Global.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-gtags" (quote ("company-gtags-")))) (autoload (quote company-ispell) "company-ispell" "`company-mode' completion backend using Ispell.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-ispell" (quote ("company-ispell-")))) (autoload (quote company-keywords) "company-keywords" "`company-mode' backend for programming language keywords.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-keywords" (quote ("company-keywords-")))) (autoload (quote company-nxml) "company-nxml" "`company-mode' completion backend for `nxml-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-nxml" (quote ("company-nxml-")))) (autoload (quote company-oddmuse) "company-oddmuse" "`company-mode' completion backend for `oddmuse-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-oddmuse" (quote ("company-oddmuse-")))) (autoload (quote company-semantic) "company-semantic" "`company-mode' completion backend using CEDET Semantic.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-semantic" (quote ("company-semantic-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-template" (quote ("company-template-")))) (autoload (quote company-tempo) "company-tempo" "`company-mode' completion backend for tempo.

(fn COMMAND &optional ARG &rest IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-tempo" (quote ("company-tempo-")))) (autoload (quote company-tng-frontend) "company-tng" "When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

(fn COMMAND)" nil nil) (define-obsolete-function-alias (quote company-tng-configure-default) (quote company-tng-mode) "0.9.14" "Applies the default configuration to enable company-tng.") (defvar company-tng-mode nil "Non-nil if Company-Tng mode is enabled.
See the `company-tng-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-tng-mode'.") (custom-autoload (quote company-tng-mode) "company-tng" nil) (autoload (quote company-tng-mode) "company-tng" "This minor mode enables `company-tng-frontend'.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-tng" (quote ("company-tng-")))) (autoload (quote company-yasnippet) "company-yasnippet" "`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

(fn COMMAND &optional ARG &rest IGNORE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "company-yasnippet" (quote ("company-yasnippet-")))) (provide (quote company-autoloads))) "haskell-mode" ((w3m-haddock haskell-menu haskell-process haskell haskell-svg haskell-collapse haskell-ghc-support haskell-string haskell-cabal haskell-unicode-input-method haskell-mode-autoloads haskell-modules haskell-decl-scan haskell-load ghci-script-mode haskell-complete-module haskell-sandbox haskell-c2hs haskell-indent ghc-core haskell-indentation haskell-debug haskell-mode haskell-move-nested haskell-compile haskell-interactive-mode haskell-align-imports haskell-commands inf-haskell haskell-presentation-mode haskell-session haskell-sort-imports haskell-doc haskell-customize haskell-navigate-imports highlight-uses-mode haskell-hoogle haskell-repl haskell-font-lock haskell-lexeme haskell-utils haskell-completions haskell-mode-pkg) (let ((loads (get (quote ghc-core) (quote custom-loads)))) (if (member (quote "ghc-core") loads) nil (put (quote ghc-core) (quote custom-loads) (cons (quote "ghc-core") loads)))) (autoload (quote ghc-core-create-core) "ghc-core" "Compile and load the current buffer as tidy core.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.hcr\\'" . ghc-core-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.dump-simpl\\'" . ghc-core-mode))) (autoload (quote ghc-core-mode) "ghc-core" "Major mode for GHC Core files.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ghc-core" (quote ("ghc-core-")))) (autoload (quote ghci-script-mode) "ghci-script-mode" "Major mode for working with .ghci files.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.ghci\\'" . ghci-script-mode))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ghci-script-mode" (quote ("ghci-script-mode-")))) (autoload (quote interactive-haskell-mode) "haskell" "Minor mode for enabling haskell-process interaction.

(fn &optional ARG)" t nil) (autoload (quote haskell-interactive-mode-return) "haskell" "Handle the return key.

(fn)" t nil) (autoload (quote haskell-session-kill) "haskell" "Kill the session process and buffer, delete the session.
1. Kill the process.
2. Kill the interactive buffer unless LEAVE-INTERACTIVE-BUFFER is not given.
3. Walk through all the related buffers and set their haskell-session to nil.
4. Remove the session from the sessions list.

(fn &optional LEAVE-INTERACTIVE-BUFFER)" t nil) (autoload (quote haskell-interactive-kill) "haskell" "Kill the buffer and (maybe) the session.

(fn)" t nil) (autoload (quote haskell-session) "haskell" "Get the Haskell session, prompt if there isn't one or fail.

(fn)" nil nil) (autoload (quote haskell-interactive-switch) "haskell" "Switch to the interactive mode for this session.

(fn)" t nil) (autoload (quote haskell-session-change) "haskell" "Change the session for the current buffer.

(fn)" t nil) (autoload (quote haskell-kill-session-process) "haskell" "Kill the process.

(fn &optional SESSION)" t nil) (autoload (quote haskell-interactive-mode-visit-error) "haskell" "Visit the buffer of the current (or last) error message.

(fn)" t nil) (autoload (quote haskell-mode-jump-to-tag) "haskell" "Jump to the tag of the given identifier.

Give optional NEXT-P parameter to override value of
`xref-prompt-for-identifier' during definition search.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-mode-after-save-handler) "haskell" "Function that will be called after buffer's saving.

(fn)" nil nil) (autoload (quote haskell-mode-tag-find) "haskell" "The tag find function, specific for the particular session.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-interactive-bring) "haskell" "Bring up the interactive mode for this session.

(fn)" t nil) (autoload (quote haskell-process-load-file) "haskell" "Load the current buffer file.

(fn)" t nil) (autoload (quote haskell-process-reload) "haskell" "Re-load the current buffer file.

(fn)" t nil) (autoload (quote haskell-process-reload-file) "haskell" "

(fn)" nil nil) (autoload (quote haskell-process-load-or-reload) "haskell" "Load or reload. Universal argument toggles which.

(fn &optional TOGGLE)" t nil) (autoload (quote haskell-process-cabal-build) "haskell" "Build the Cabal project.

(fn)" t nil) (autoload (quote haskell-process-cabal) "haskell" "Prompts for a Cabal command to run.

(fn P)" t nil) (autoload (quote haskell-process-minimal-imports) "haskell" "Dump minimal imports.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell" (quote ("haskell-" "xref-prompt-for-identifier" "interactive-haskell-mode-map")))) (autoload (quote haskell-align-imports) "haskell-align-imports" "Align all the imports in the buffer.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-align-imports" (quote ("haskell-align-imports-")))) (add-to-list (quote auto-mode-alist) (quote ("\\.chs\\'" . haskell-c2hs-mode))) (autoload (quote haskell-c2hs-mode) "haskell-c2hs" "Mode for editing *.chs files of the c2hs haskell tool.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-c2hs" (quote ("haskell-c2hs-font-lock-keywords")))) (add-to-list (quote auto-mode-alist) (quote ("\\.cabal\\'\\|/cabal\\.project\\|/\\.cabal/config\\'" . haskell-cabal-mode))) (autoload (quote haskell-cabal-mode) "haskell-cabal" "Major mode for Cabal package description files.

(fn)" t nil) (autoload (quote haskell-cabal-get-field) "haskell-cabal" "Read the value of field with NAME from project's cabal file.
If there is no valid .cabal file to get the setting from (or
there is no corresponding setting with that name in the .cabal
file), then this function returns nil.

(fn NAME)" t nil) (autoload (quote haskell-cabal-get-dir) "haskell-cabal" "Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

(fn &optional USE-DEFAULTS)" nil nil) (autoload (quote haskell-cabal-visit-file) "haskell-cabal" "Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

(fn OTHER-WINDOW)" t nil) (let ((loads (get (quote haskell-cabal) (quote custom-loads)))) (if (member (quote "haskell-cabal") loads) nil (put (quote haskell-cabal) (quote custom-loads) (cons (quote "haskell-cabal") loads)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-cabal" (quote ("haskell-")))) (autoload (quote haskell-collapse-mode) "haskell-collapse" "Minor mode to collapse and expand haskell expressions

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-collapse" (quote ("haskell-")))) (autoload (quote haskell-process-restart) "haskell-commands" "Restart the inferior Haskell process.

(fn)" t nil) (autoload (quote haskell-process-clear) "haskell-commands" "Clear the current process.

(fn)" t nil) (autoload (quote haskell-process-interrupt) "haskell-commands" "Interrupt the process (SIGINT).

(fn)" t nil) (autoload (quote haskell-describe) "haskell-commands" "Describe the given identifier IDENT.

(fn IDENT)" t nil) (autoload (quote haskell-rgrep) "haskell-commands" "Grep the effective project for the symbol at point.
Very useful for codebase navigation.

Prompts for an arbitrary regexp given a prefix arg PROMPT.

(fn &optional PROMPT)" t nil) (autoload (quote haskell-process-do-info) "haskell-commands" "Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

(fn &optional PROMPT-VALUE)" t nil) (autoload (quote haskell-process-do-type) "haskell-commands" "Print the type of the given expression.

Given INSERT-VALUE prefix indicates that result type signature
should be inserted.

(fn &optional INSERT-VALUE)" t nil) (autoload (quote haskell-mode-jump-to-def-or-tag) "haskell-commands" "Jump to the definition.
Jump to definition of identifier at point by consulting GHCi, or
tag table as fallback.

Remember: If GHCi is busy doing something, this will delay, but
it will always be accurate, in contrast to tags, which always
work but are not always accurate.
If the definition or tag is found, the location from which you jumped
will be pushed onto `xref--marker-ring', so you can return to that
position with `xref-pop-marker-stack'.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-mode-goto-loc) "haskell-commands" "Go to the location of the thing at point.
Requires the :loc-at command from GHCi.

(fn)" t nil) (autoload (quote haskell-mode-jump-to-def) "haskell-commands" "Jump to definition of identifier IDENT at point.

(fn IDENT)" t nil) (autoload (quote haskell-process-cd) "haskell-commands" "Change directory.

(fn &optional NOT-INTERACTIVE)" t nil) (autoload (quote haskell-process-cabal-macros) "haskell-commands" "Send the cabal macros string.

(fn)" t nil) (autoload (quote haskell-mode-show-type-at) "haskell-commands" "Show type of the thing at point or within active region asynchronously.
This function requires GHCi 8+ or GHCi-ng.

\\<haskell-interactive-mode-map>
To make this function works sometimes you need to load the file in REPL
first using command `haskell-process-load-file' bound to
\\[haskell-process-load-file].

Optional argument INSERT-VALUE indicates that
recieved type signature should be inserted (but only if nothing
happened since function invocation).

(fn &optional INSERT-VALUE)" t nil) (autoload (quote haskell-process-unignore) "haskell-commands" "Unignore any ignored files.
Do not ignore files that were specified as being ignored by the
inferior GHCi process.

(fn)" t nil) (autoload (quote haskell-session-change-target) "haskell-commands" "Set the build TARGET for cabal REPL.

(fn TARGET)" t nil) (autoload (quote haskell-mode-stylish-buffer) "haskell-commands" "Apply stylish-haskell to the current buffer.

Use `haskell-mode-stylish-haskell-path' to know where to find
stylish-haskell executable.  This function tries to preserve
cursor position and markers by using
`haskell-mode-buffer-apply-command'.

(fn)" t nil) (autoload (quote haskell-mode-find-uses) "haskell-commands" "Find use cases of the identifier at point and highlight them all.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-commands" (quote ("haskell-")))) (let ((loads (get (quote haskell-compile) (quote custom-loads)))) (if (member (quote "haskell-compile") loads) nil (put (quote haskell-compile) (quote custom-loads) (cons (quote "haskell-compile") loads)))) (autoload (quote haskell-compile) "haskell-compile" "Run a compile command for the current Haskell buffer.
Obeys haskell-compiler-type to choose the appropriate build command.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), prompt for a custom compile command.

If EDIT-COMMAND contains the negative prefix argument `-', call
the alternative command defined in
`haskell-compile-stack-build-alt-command' /
`haskell-compile-cabal-build-alt-command'.

If there is no prefix argument, the most recent custom compile
command is used, falling back to
`haskell-compile-stack-build-command' for stack builds
`haskell-compile-cabal-build-command' for cabal builds, and
`haskell-compile-command' otherwise.

'% characters in the `-command' templates are replaced by the
base directory for build tools, or the current buffer for
`haskell-compile-command'.

(fn &optional EDIT-COMMAND)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-compile" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-complete-module" (quote ("haskell-complete-module")))) (let ((loads (get (quote haskell-completions) (quote custom-loads)))) (if (member (quote "haskell-completions") loads) nil (put (quote haskell-completions) (quote custom-loads) (cons (quote "haskell-completions") loads)))) (autoload (quote haskell-completions-completion-at-point) "haskell-completions" "Provide completion list for thing at point.
This function is used in non-interactive `haskell-mode'.  It
provides completions for haskell keywords, language pragmas,
GHC's options, and language extensions, but not identifiers.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-completions" (quote ("haskell-completions-")))) (let ((loads (get (quote haskell) (quote custom-loads)))) (if (member (quote "haskell-customize") loads) nil (put (quote haskell) (quote custom-loads) (cons (quote "haskell-customize") loads)))) (let ((loads (get (quote haskell-interactive) (quote custom-loads)))) (if (member (quote "haskell-customize") loads) nil (put (quote haskell-interactive) (quote custom-loads) (cons (quote "haskell-customize") loads)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-customize" (quote ("haskell-" "inferior-haskell-root-dir")))) (let ((loads (get (quote haskell-debug) (quote custom-loads)))) (if (member (quote "haskell-debug") loads) nil (put (quote haskell-debug) (quote custom-loads) (cons (quote "haskell-debug") loads)))) (defface haskell-debug-warning-face (quote ((t :inherit (quote compilation-warning)))) "Face for warnings." :group (quote haskell-debug)) (defface haskell-debug-trace-number-face (quote ((t :weight bold :background "#f5f5f5"))) "Face for numbers in backtrace." :group (quote haskell-debug)) (defface haskell-debug-newline-face (quote ((t :weight bold :background "#f0f0f0"))) "Face for newlines in trace steps." :group (quote haskell-debug)) (defface haskell-debug-keybinding-face (quote ((t :inherit (quote font-lock-type-face) :weight bold))) "Face for keybindings." :group (quote haskell-debug)) (defface haskell-debug-heading-face (quote ((t :inherit (quote font-lock-keyword-face)))) "Face for headings." :group (quote haskell-debug)) (defface haskell-debug-muted-face (quote ((t :foreground "#999"))) "Face for muteds." :group (quote haskell-debug)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-debug" (quote ("haskell-debug")))) (let ((loads (get (quote haskell-decl-scan) (quote custom-loads)))) (if (member (quote "haskell-decl-scan") loads) nil (put (quote haskell-decl-scan) (quote custom-loads) (cons (quote "haskell-decl-scan") loads)))) (autoload (quote haskell-ds-create-imenu-index) "haskell-decl-scan" "Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

(fn)" nil nil) (autoload (quote turn-on-haskell-decl-scan) "haskell-decl-scan" "Unconditionally activate `haskell-decl-scan-mode'.

(fn)" t nil) (autoload (quote haskell-decl-scan-mode) "haskell-decl-scan" "Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `haskell-literate-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-decl-scan" (quote ("haskell-d" "literate-haskell-ds-")))) (let ((loads (get (quote haskell-doc) (quote custom-loads)))) (if (member (quote "haskell-doc") loads) nil (put (quote haskell-doc) (quote custom-loads) (cons (quote "haskell-doc") loads)))) (autoload (quote haskell-doc-mode) "haskell-doc" "Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

(fn &optional ARG)" t nil) (defalias (quote turn-on-haskell-doc-mode) (quote haskell-doc-mode)) (defalias (quote turn-on-haskell-doc) (quote haskell-doc-mode)) (autoload (quote haskell-doc-current-info) "haskell-doc" "Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

(fn)" nil nil) (autoload (quote haskell-doc-show-type) "haskell-doc" "Show the type of the function near point or given symbol SYM.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

(fn &optional SYM)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-doc" (quote ("inferior-haskell-" "haskell-" "turn-off-haskell-doc")))) (let ((loads (get (quote haskell-appearance) (quote custom-loads)))) (if (member (quote "haskell-font-lock") loads) nil (put (quote haskell-appearance) (quote custom-loads) (cons (quote "haskell-font-lock") loads)))) (defface haskell-keyword-face (quote ((t :inherit font-lock-keyword-face))) "Face used to highlight Haskell keywords." :group (quote haskell-appearance)) (defface haskell-type-face (quote ((t :inherit font-lock-type-face))) "Face used to highlight Haskell types" :group (quote haskell-appearance)) (defface haskell-constructor-face (quote ((t :inherit font-lock-type-face))) "Face used to highlight Haskell constructors." :group (quote haskell-appearance)) (defface haskell-operator-face (quote ((t :inherit font-lock-variable-name-face))) "Face used to highlight Haskell operators." :group (quote haskell-appearance)) (defface haskell-pragma-face (quote ((t :inherit font-lock-preprocessor-face))) "Face used to highlight Haskell pragmas ({-# ... #-})." :group (quote haskell-appearance)) (defface haskell-liquid-haskell-annotation-face (quote ((t :inherit haskell-pragma-face))) "Face used to highlight LiquidHaskell annotations ({-@ ... @-})." :group (quote haskell-appearance)) (defface haskell-literate-comment-face (quote ((t :inherit font-lock-doc-face))) "Face with which to fontify literate comments.
Inherit from `default' to avoid fontification of them." :group (quote haskell-appearance)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-font-lock" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-ghc-support" (quote ("haskell-")))) (autoload (quote haskell-hoogle) "haskell-hoogle" "Do a Hoogle search for QUERY.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

(fn QUERY &optional INFO)" t nil) (defalias (quote hoogle) (quote haskell-hoogle)) (autoload (quote haskell-hoogle-lookup-from-website) "haskell-hoogle" "Lookup QUERY at `haskell-hoogle-url'.

(fn QUERY)" t nil) (autoload (quote haskell-hoogle-lookup-from-local) "haskell-hoogle" "Lookup QUERY on local hoogle server.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-hoogle" (quote ("hoogle-prompt" "haskell-hoogle-")))) (let ((loads (get (quote haskell-indent) (quote custom-loads)))) (if (member (quote "haskell-indent") loads) nil (put (quote haskell-indent) (quote custom-loads) (cons (quote "haskell-indent") loads)))) (autoload (quote turn-on-haskell-indent) "haskell-indent" "Turn on ``intelligent'' Haskell indentation mode.

(fn)" nil nil) (autoload (quote haskell-indent-mode) "haskell-indent" "``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

If `ARG' is falsey, toggle `haskell-indent-mode'.  Else sets
`haskell-indent-mode' to whether `ARG' is greater than 0.

Invokes `haskell-indent-hook' if not nil.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-indent" (quote ("turn-off-haskell-indent" "haskell-indent-")))) (let ((loads (get (quote haskell-indentation) (quote custom-loads)))) (if (member (quote "haskell-indentation") loads) nil (put (quote haskell-indentation) (quote custom-loads) (cons (quote "haskell-indentation") loads)))) (autoload (quote haskell-indentation-mode) "haskell-indentation" "Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.

(fn &optional ARG)" t nil) (autoload (quote turn-on-haskell-indentation) "haskell-indentation" "Turn on the haskell-indentation minor mode.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-indentation" (quote ("haskell-indentation-")))) (defface haskell-interactive-face-prompt (quote ((t :inherit font-lock-function-name-face))) "Face for the prompt." :group (quote haskell-interactive)) (defface haskell-interactive-face-prompt-cont (quote ((t :inherit font-lock-keyword-face))) "Face for GHCi's prompt-cont in multi-line mode." :group (quote haskell-interactive)) (define-obsolete-face-alias (quote haskell-interactive-face-prompt2) (quote haskell-interactive-face-prompt-cont) "16.2") (defface haskell-interactive-face-compile-error (quote ((t :inherit compilation-error))) "Face for compile errors." :group (quote haskell-interactive)) (defface haskell-interactive-face-compile-warning (quote ((t :inherit compilation-warning))) "Face for compiler warnings." :group (quote haskell-interactive)) (defface haskell-interactive-face-result (quote ((t :inherit font-lock-string-face))) "Face for the result." :group (quote haskell-interactive)) (defface haskell-interactive-face-garbage (quote ((t :inherit font-lock-string-face))) "Face for trailing garbage after a command has completed." :group (quote haskell-interactive)) (autoload (quote haskell-interactive-mode-reset-error) "haskell-interactive-mode" "Reset the error cursor position.

(fn SESSION)" t nil) (autoload (quote haskell-interactive-mode-echo) "haskell-interactive-mode" "Echo a read only piece of text before the prompt.

(fn SESSION MESSAGE &optional MODE)" nil nil) (autoload (quote haskell-process-show-repl-response) "haskell-interactive-mode" "Send LINE to the GHCi process and echo the result in some fashion.
Result will be printed in the minibuffer or presented using
function `haskell-presentation-present', depending on variable
`haskell-process-use-presentation-mode'.

(fn LINE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-interactive-mode" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-lexeme" (quote ("haskell-lexeme-")))) (defface haskell-error-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#dc322f")) (t :inherit error))) "Face used for marking error lines." :group (quote haskell-mode)) (defface haskell-warning-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#b58900")) (t :inherit warning))) "Face used for marking warning lines." :group (quote haskell-mode)) (defface haskell-hole-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#6c71c4")) (t :inherit warning))) "Face used for marking hole lines." :group (quote haskell-mode)) (autoload (quote haskell-process-reload-devel-main) "haskell-load" "Reload the module `DevelMain' and then run `DevelMain.update'.

This is for doing live update of the code of servers or GUI
applications.  Put your development version of the program in
`DevelMain', and define `update' to auto-start the program on a
new thread, and use the `foreign-store' package to access the
running context across :load/:reloads in GHCi.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-load" (quote ("haskell-")))) (autoload (quote haskell-menu) "haskell-menu" "Launch the Haskell sessions menu.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-menu" (quote ("haskell-menu-")))) (autoload (quote haskell-version) "haskell-mode" "Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.

(fn &optional HERE)" t nil) (autoload (quote haskell-mode-view-news) "haskell-mode" "Display information on recent changes to haskell-mode.

(fn)" t nil) (autoload (quote haskell-mode) "haskell-mode" "Major mode for editing Haskell programs.

\\<haskell-mode-map>

Literate Haskell scripts are supported via `haskell-literate-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook'.

Indentation modes:

    `haskell-indentation-mode', Kristof Bastiaensen, Gergely Risko
      Intelligent semi-automatic indentation Mk2

    `haskell-indent-mode', Guy Lapalme
      Intelligent semi-automatic indentation.

Interaction modes:

    `interactive-haskell-mode'
      Interact with per-project GHCi processes through a REPL and
      directory-aware sessions.

Other modes:

    `haskell-decl-scan-mode', Graeme E Moss
      Scans top-level declarations, and places them in a menu.

    `haskell-doc-mode', Hans-Wolfgang Loidl
      Echoes types of functions or syntax of keywords when the cursor is idle.

To activate a minor-mode, simply run the interactive command. For
example, `M-x haskell-doc-mode'. Run it again to disable it.

To enable a mode for every haskell-mode buffer, add a hook in
your Emacs configuration. To do that you can customize
`haskell-mode-hook' or add lines to your .emacs file. For
example, to enable `interactive-haskell-mode', use the following:

    (add-hook 'haskell-mode-hook 'interactive-haskell-mode)

Minor modes that work well with `haskell-mode':

- `smerge-mode': show and work with diff3 conflict markers used
  by git, svn and other version control systems.

(fn)" t nil) (autoload (quote haskell-forward-sexp) "haskell-mode" "Haskell specific version of `forward-sexp'.

Move forward across one balanced expression (sexp).  With ARG, do
it that many times.  Negative arg -N means move backward across N
balanced expressions.  This command assumes point is not in a
string or comment.

If unable to move over a sexp, signal `scan-error' with three
arguments: a message, the start of the obstacle (a parenthesis or
list marker of some kind), and end of the obstacle.

(fn &optional ARG)" t nil) (autoload (quote haskell-literate-mode) "haskell-mode" "As `haskell-mode' but for literate scripts.

(fn)" t nil) (define-obsolete-function-alias (quote literate-haskell-mode) (quote haskell-literate-mode) "2020-04") (add-to-list (quote auto-mode-alist) (quote ("\\.[gh]s\\'" . haskell-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.hsig\\'" . haskell-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.l[gh]s\\'" . haskell-literate-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.hsc\\'" . haskell-mode))) (add-to-list (quote interpreter-mode-alist) (quote ("runghc" . haskell-mode))) (add-to-list (quote interpreter-mode-alist) (quote ("runhaskell" . haskell-mode))) (add-to-list (quote completion-ignored-extensions) ".hi") (autoload (quote haskell-mode-generate-tags) "haskell-mode" "Generate tags using Hasktags.  This is synchronous function.

If optional AND-THEN-FIND-THIS-TAG argument is present it is used
with function `xref-find-definitions' after new table was
generated.

(fn &optional AND-THEN-FIND-THIS-TAG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-mode" (quote ("haskell-")))) (autoload (quote haskell-session-installed-modules) "haskell-modules" "Get the modules installed in the current package set.

(fn SESSION &optional DONTCREATE)" nil nil) (autoload (quote haskell-session-all-modules) "haskell-modules" "Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

(fn SESSION &optional DONTCREATE)" nil nil) (autoload (quote haskell-session-project-modules) "haskell-modules" "Get the modules of the current project.
If DONTCREATE is non-nil don't create a new session.

(fn SESSION &optional DONTCREATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-modules" (quote ("haskell-")))) (autoload (quote haskell-move-nested) "haskell-move-nested" "Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" nil nil) (autoload (quote haskell-move-nested-right) "haskell-move-nested" "Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" t nil) (autoload (quote haskell-move-nested-left) "haskell-move-nested" "Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-move-nested" (quote ("haskell-")))) (autoload (quote haskell-navigate-imports) "haskell-navigate-imports" "Cycle the Haskell import lines or return to point (with prefix arg).

(fn &optional RETURN)" t nil) (autoload (quote haskell-navigate-imports-go) "haskell-navigate-imports" "Go to the first line of a list of consecutive import lines. Cycles.

(fn)" t nil) (autoload (quote haskell-navigate-imports-return) "haskell-navigate-imports" "Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-navigate-imports" (quote ("haskell-navigate-imports-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-presentation-mode" (quote ("haskell-presentation-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-process" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-repl" (quote ("haskell-interactive-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-sandbox" (quote ("haskell-sandbox-")))) (autoload (quote haskell-session-maybe) "haskell-session" "Maybe get the Haskell session, return nil if there isn't one.

(fn)" nil nil) (autoload (quote haskell-session-process) "haskell-session" "Get the session process.

(fn S)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-session" (quote ("haskell-session")))) (autoload (quote haskell-sort-imports) "haskell-sort-imports" "Sort the import list at point. It sorts the current group
i.e. an import list separated by blank lines on either side.

If the region is active, it will restrict the imports to sort
within that region.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-sort-imports" (quote ("haskell-sort-imports-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-string" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-svg" (quote ("haskell-svg-")))) (autoload (quote haskell-unicode-input-method-enable) "haskell-unicode-input-method" "Set input method `haskell-unicode'.

(fn)" t nil) (define-obsolete-function-alias (quote turn-on-haskell-unicode-input-method) (quote haskell-unicode-input-method-enable) "2020-04") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-utils" (quote ("haskell-")))) (autoload (quote highlight-uses-mode) "highlight-uses-mode" "Minor mode for highlighting and jumping between uses.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "highlight-uses-mode" (quote ("highlight-uses-mode-")))) (let ((loads (get (quote inferior-haskell) (quote custom-loads)))) (if (member (quote "inf-haskell") loads) nil (put (quote inferior-haskell) (quote custom-loads) (cons (quote "inf-haskell") loads)))) (autoload (quote run-haskell) "inf-haskell" "Show the inferior-haskell buffer.  Start the process if needed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "inf-haskell" (quote ("haskell-" "inf")))) (defface w3m-haddock-heading-face (quote ((((class color)) :inherit highlight))) "Face for quarantines." :group (quote haskell)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "w3m-haddock" (quote ("w3m-haddock-" "haskell-w3m-")))) (provide (quote haskell-mode-autoloads))) "lcr" ((lcr-autoloads lcr) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "lcr" (quote ("lcr-")))) (provide (quote lcr-autoloads))) "dante" ((dante-autoloads dante) (autoload (quote dante-mode) "dante" "Minor mode for Dante.

`dante-mode' takes one optional (prefix) argument.
Interactively with no prefix argument, it toggles dante.
A prefix argument enables dante if the argument is positive,
and disables it otherwise.

When called from Lisp, the `dante-mode' toggles dante if the
argument is `toggle', disables dante if the argument is a
non-positive integer, and enables dante otherwise (including
if the argument is omitted or nil or a positive integer).

\\{dante-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "dante" (quote ("dante-")))) (provide (quote dante-autoloads))) "smex" ((smex-autoloads smex) (autoload (quote smex) "smex" "

(fn)" t nil) (autoload (quote smex-major-mode-commands) "smex" "Like `smex', but limited to commands that are relevant to the active major mode.

(fn)" t nil) (autoload (quote smex-initialize) "smex" "

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "smex" (quote ("smex-")))) (provide (quote smex-autoloads))) "gruber-darker-theme" ((gruber-darker-theme gruber-darker-theme-autoloads) (when load-file-name (add-to-list (quote custom-theme-load-path) (file-name-as-directory (file-name-directory load-file-name)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "gruber-darker-theme" (quote ("gruber-darker")))) (provide (quote gruber-darker-theme-autoloads))) "nix-mode" ((nix nix-instantiate nix-mode nix-store nix-repl nix-prettify-mode nix-shebang nix-drv-mode nix-shell nix-format nix-log nix-mode-autoloads nix-search nix-edit nix-build) (autoload (quote pcomplete/nix) "nix" "Completion for the nix command.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-build" (quote ("nix-build")))) (autoload (quote nix-drv-mode) "nix-drv-mode" "Pretty print Nix\342\200\231s .drv files.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-drv-mode" (quote ("nix-drv-mode")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-edit" (quote ("nix-edit")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-format" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-instantiate" (quote ("nix-instantiate")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-log" (quote ("nix-log")))) (autoload (quote nix-mode-format) "nix-mode" "Format the entire `nix-mode' buffer.

(fn)" t nil) (autoload (quote nix-indent-line) "nix-mode" "Indent current line in a Nix expression.

(fn)" t nil) (autoload (quote nix-indent-region) "nix-mode" "Indent on a whole region. Enabled by default.
START where to start in region.
END where to end the region.

(fn START END)" t nil) (autoload (quote nix-mode-ffap-nixpkgs-path) "nix-mode" "Support `ffap' for <nixpkgs> declarations.
If STR contains brackets, call `nix-instantiate' to find the
location of STR. If `nix-instantiate' has a nonzero exit code,
don\342\200\231t do anything

(fn STR)" nil nil) (autoload (quote nix-mode) "nix-mode" "Major mode for editing Nix expressions.

The following commands may be useful:

  '\\[newline-and-indent]'
    Insert a newline and move the cursor to align with the previous
    non-empty line.

  '\\[fill-paragraph]'
    Refill a paragraph so that all lines are at most `fill-column'
    lines long.  This should do the right thing for comments beginning
    with `#'.  However, this command doesn't work properly yet if the
    comment is adjacent to code (i.e., no intervening empty lines).
    In that case, select the text to be refilled and use
    `\\[fill-region]' instead.

The hook `nix-mode-hook' is run when Nix mode is started.

\\{nix-mode-map}

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.nix\\'" . nix-mode))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-mode" (quote ("nix-")))) (autoload (quote nix-prettify-mode) "nix-prettify-mode" "Toggle Nix Prettify mode.

With a prefix argument ARG, enable Nix Prettify mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When Nix Prettify mode is enabled, hash-parts of the Nix store
file names (see `nix-prettify-regexp') are prettified,
i.e. displayed as `nix-prettify-char' character.  This mode can
be enabled programmatically using hooks:

  (add-hook 'shell-mode-hook 'nix-prettify-mode)

It is possible to enable the mode in any buffer, however not any
buffer's highlighting may survive after adding new elements to
`font-lock-keywords' (see `nix-prettify-special-modes' for
details).

Also you can use `global-nix-prettify-mode' to enable Nix
Prettify mode for all modes that support font-locking.

(fn &optional ARG)" t nil) (defvar nix-prettify-global-mode nil "Non-nil if Nix-Prettify-Global mode is enabled.
See the `nix-prettify-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nix-prettify-global-mode'.") (custom-autoload (quote nix-prettify-global-mode) "nix-prettify-mode" nil) (autoload (quote nix-prettify-global-mode) "nix-prettify-mode" "Toggle Nix-Prettify mode in all buffers.
With prefix ARG, enable Nix-Prettify-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Nix-Prettify mode is enabled in all buffers where
`nix-prettify-turn-on' would do it.
See `nix-prettify-mode' for more information on Nix-Prettify mode.

(fn &optional ARG)" t nil) (define-obsolete-function-alias (quote global-nix-prettify-mode) (quote nix-prettify-global-mode)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-prettify-mode" (quote ("nix-prettify-")))) (autoload (quote nix-repl) "nix-repl" "Load the Nix-REPL.

(fn)" t nil) (autoload (quote nix-repl-completion-at-point) "nix-repl" "Completion at point function for Nix using \"nix-repl\".
See `completion-at-point-functions'.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-repl" (quote ("nix-")))) (autoload (quote nix-search) "nix-search" "Run nix search.
SEARCH a search term to use.
FILE a Nix expression to search in.

(fn &optional SEARCH FILE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-search" (quote ("nix-search-read-attr")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-shebang" (quote ("nix-shebang-")))) (autoload (quote nix-shell-unpack) "nix-shell" "Run Nix\342\200\231s unpackPhase.
FILE is the file to unpack from.
ATTR is the attribute to unpack.

(fn FILE ATTR)" t nil) (autoload (quote nix-shell-configure) "nix-shell" "Run Nix\342\200\231s configurePhase.
FILE is the file to configure from.
ATTR is the attribute to configure.

(fn FILE ATTR)" t nil) (autoload (quote nix-shell-build) "nix-shell" "Run Nix\342\200\231s buildPhase.
FILE is the file to build from.
ATTR is the attribute to build.

(fn FILE ATTR)" t nil) (autoload (quote nix-eshell-with-packages) "nix-shell" "Create an Eshell buffer that has the shell environment in it.
PACKAGES a list of packages to pull in.
PKGS-FILE a file to use to get the packages.

(fn PACKAGES &optional PKGS-FILE)" nil nil) (autoload (quote nix-eshell) "nix-shell" "Create an Eshell buffer that has the shell environment in it.
FILE the .nix expression to create a shell for.
ATTR attribute to instantiate in NIX-FILE.

(fn FILE &optional ATTR)" t nil) (autoload (quote nix-shell-with-string) "nix-shell" "A nix-shell emulator in Emacs from a string.
STRING the nix expression to use.

(fn STRING)" nil nil) (autoload (quote nix-shell) "nix-shell" "A nix-shell emulator in Emacs.
FILE the file to instantiate.
ATTR an attribute of the Nix file to use.

(fn FILE &optional ATTR)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-shell" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-store" (quote ("nix-store-realise")))) (provide (quote nix-mode-autoloads)))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "melpa" nil "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "use-package" nil "bind-key" nil "attrap" nil "dash" nil "f" nil "s" nil "flycheck" nil "pkg-info" nil "epl" nil "cl-lib" nil "let-alist" nil "seq" nil "dante" nil "company" nil "haskell-mode" nil "lcr" nil "smex" nil "gruber-darker-theme" nil "nix-mode" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "attrap" (attrap :type git :flavor melpa :host github :repo "jyp/attrap") "dash" (dash :type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el") "f" (f :type git :flavor melpa :files ("f.el" "f-pkg.el") :host github :repo "rejeep/f.el") "s" (s :type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el") "flycheck" (flycheck :type git :flavor melpa :host github :repo "flycheck/flycheck") "pkg-info" (pkg-info :type git :flavor melpa :host github :repo "emacsorphanage/pkg-info") "epl" (epl :type git :flavor melpa :host github :repo "cask/epl") "cl-lib" nil "let-alist" nil "seq" nil "dante" (dante :type git :flavor melpa :host github :repo "jyp/dante") "company" (company :type git :flavor melpa :host github :repo "company-mode/company-mode") "haskell-mode" (haskell-mode :type git :flavor melpa :files (:defaults "NEWS" "logo.svg" "haskell-mode-pkg.el") :host github :repo "haskell/haskell-mode") "lcr" (lcr :type git :flavor melpa :host github :repo "jyp/lcr") "smex" (smex :type git :flavor melpa :host github :repo "nonsequitur/smex") "gruber-darker-theme" (gruber-darker-theme :type git :flavor melpa :host github :repo "rexim/gruber-darker-theme") "nix-mode" (nix-mode :type git :flavor melpa :files (:defaults (:exclude "nix-company.el" "nix-mode-mmm.el") "nix-mode-pkg.el") :host github :repo "NixOS/nix-mode"))) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "emacsmirror-mirror" nil "straight" nil "cl-lib" nil "let-alist" (let-alist :type git :host github :repo "emacs-straight/let-alist" :files ("*" (:exclude ".git"))) "seq" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "cl-lib" nil "seq" nil))))

("org-elpa" "melpa" "gnu-elpa-mirror" "emacsmirror-mirror" "straight" "emacs" "use-package" "bind-key" "attrap" "dash" "f" "s" "flycheck" "pkg-info" "epl" "cl-lib" "let-alist" "seq" "dante" "company" "haskell-mode" "lcr" "smex" "gruber-darker-theme" "nix-mode")

t
