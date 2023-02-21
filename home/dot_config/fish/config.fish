if status is-interactive
    # Commands to run in interactive sessions can go here

    # fzf key bindings
    # fzf_configure_bindings --git_status=\cG --history=\cr --git_log=\cL --processes=\cP --directory=\cO

    # git aliases
    abbr -a gco git checkout
end

starship init fish | source
