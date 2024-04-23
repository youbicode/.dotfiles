if status is-interactive
    # Commands to run in interactive sessions can go here

    # fzf key bindings
    # fzf_configure_bindings --git_status=\cG --history=\cr --git_log=\cL --processes=\cP --directory=\cO

    # git aliases
    abbr gco git checkout
    abbr gcm --set-cursor=! "git commit -m '!'"
    abbr "??" --set-cursor=! 'gh copilot explain "!"'
    abbr "ghc" gh copilot

end

starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/youbicode/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
