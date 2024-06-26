# THEME #
set -g @plugin "janoamaral/tokyo-night-tmux"

# style
set -g @tokyo-night-tmux_theme night
set -g @tokyo-night-tmux_window_id_style none
set -g @tokyo-night-tmux_pane_id_style hsquare
set -g @tokyo-night-tmux_zoom_id_style dsquare

# netspeed
set -g @tokyo-night-tmux_show_netspeed 0

# date and time
set -g @tokyo-night-tmux_show_datetime 1
set -g @tokyo-night-tmux_date_format DMY
set -g @tokyo-night-tmux_time_format 24H

# now playing
set -g @tokyo-night-tmux_show_music 0

# path
set -g @tokyo-night-tmux_show_path  1
set -g @tokyo-night-tmux_path_format relative
