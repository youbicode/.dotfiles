if status is-interactive
    # Commands to run in interactive sessions can go here

    # fzf key bindings
    # fzf_configure_bindings --git_status=\cG --history=\cr --git_log=\cL --processes=\cP --directory=\cO

    # git aliases
    abbr gco git checkout
    abbr gcm --set-cursor=! "git commit -m '!'"
    abbr "??" github-copilot-cli what-the-shell
    abbr "git?" github-copilot-cli git-assist
    abbr "gh?" github-copilot-cli gh-assist

end

starship init fish | source

# pnpm
set -gx PNPM_HOME "/Users/youbicode/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end