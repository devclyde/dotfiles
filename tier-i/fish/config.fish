if status --is-login
  set fish_greeting "you will die"

  set -gx PATH $PATH $HOME/.emacs.d/bin/ $HOME/.local/bin $HOME/.cargo/bin /opt/dotnet
  set -gx GPG_TTY (tty)

  set --global hydro_symbol_prompt "\$"
end
