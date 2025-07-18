complete -c btm -s C -l config_location -d 'Sets the location of the config file.' -r -F
complete -c btm -s t -l default_time_value -d 'Default time value for graphs.' -r
complete -c btm -l default_widget_count -d 'Sets the N\'th selected widget type as the default.' -r
complete -c btm -l default_widget_type -d 'Sets the default widget type. Use --help for more info.' -r -f -a "{cpu\t'',mem\t'',net\t'',network\t'',proc\t'',process\t'',processes\t'',temp\t'',temperature\t'',disk\t'',batt\t'',battery\t''}"
complete -c btm -s r -l rate -d 'Sets how often data is refreshed.' -r
complete -c btm -l retention -d 'How far back data will be stored up to.' -r
complete -c btm -s d -l time_delta -d 'The amount of time changed upon zooming.' -r
complete -c btm -l default_cpu_entry -d 'Sets which CPU entry type is selected by default.' -r -f -a "{all\t'',avg\t''}"
complete -c btm -l memory_legend -d 'Where to place the legend for the memory chart widget.' -r -f -a "{none\t'',top-left\t'',top\t'',top-right\t'',left\t'',right\t'',bottom-left\t'',bottom\t'',bottom-right\t''}"
complete -c btm -l network_legend -d 'Where to place the legend for the network chart widget.' -r -f -a "{none\t'',top-left\t'',top\t'',top-right\t'',left\t'',right\t'',bottom-left\t'',bottom\t'',bottom-right\t''}"
complete -c btm -l theme -d 'Use a built-in color theme, use \'--help\' for info on the colors. [possible values: default, default-light, gruvbox, gruvbox-light, nord, nord-light]' -r -f -a "{default\t'',default-light\t'',gruvbox\t'',gruvbox-light\t'',nord\t'',nord-light\t''}"
complete -c btm -l autohide_time -d 'Temporarily shows the time scale in graphs.'
complete -c btm -s b -l basic -d 'Hides graphs and uses a more basic look.'
complete -c btm -l disable_click -d 'Disables mouse clicks.'
complete -c btm -s m -l dot_marker -d 'Uses a dot marker for graphs.'
complete -c btm -s e -l expanded -d 'Expand the default widget upon starting the app.'
complete -c btm -l hide_table_gap -d 'Hides spacing between table headers and entries.'
complete -c btm -l hide_time -d 'Hides the time scale from being shown.'
complete -c btm -l show_table_scroll_position -d 'Shows the list scroll position tracker in the widget title for table widgets.'
complete -c btm -s S -l case_sensitive -d 'Enables case sensitivity by default.'
complete -c btm -s u -l current_usage -d 'Calculates process CPU usage as a percentage of current usage rather than total usage.'
complete -c btm -l disable_advanced_kill -d 'Hides additional stopping options Unix-like systems.'
complete -c btm -s g -l group_processes -d 'Groups processes with the same name by default.'
complete -c btm -l process_memory_as_value -d 'Defaults to showing process memory usage by value.'
complete -c btm -l process_command -d 'Shows the full command name instead of the process name by default.'
complete -c btm -s R -l regex -d 'Enables regex by default while searching.'
complete -c btm -s T -l tree -d 'Makes the process widget use tree mode by default.'
complete -c btm -s n -l unnormalized_cpu -d 'Show process CPU% usage without averaging over the number of CPU cores.'
complete -c btm -s W -l whole_word -d 'Enables whole-word matching by default while searching.'
complete -c btm -s c -l celsius -d 'Use Celsius as the temperature unit. Default.'
complete -c btm -s f -l fahrenheit -d 'Use Fahrenheit as the temperature unit.'
complete -c btm -s k -l kelvin -d 'Use Kelvin as the temperature unit.'
complete -c btm -s l -l cpu_left_legend -d 'Puts the CPU chart legend on the left side.'
complete -c btm -s a -l hide_avg_cpu -d 'Hides the average CPU usage entry.'
complete -c btm -l enable_cache_memory -d 'Enables collecting and displaying cache and buffer memory.'
complete -c btm -l network_use_bytes -d 'Displays the network widget using bytes.'
complete -c btm -l network_use_binary_prefix -d 'Displays the network widget with binary prefixes.'
complete -c btm -l network_use_log -d 'Displays the network widget with a log scale.'
complete -c btm -l use_old_network_legend -d '(DEPRECATED) Uses a separate network legend.'
complete -c btm -l battery -d 'Shows the battery widget in non-custom layouts.'
complete -c btm -l enable_gpu -d 'Enable collecting and displaying GPU usage.'
complete -c btm -s h -l help -d 'Prints help info (for more details use \'--help\'.'
complete -c btm -s V -l version -d 'Prints version information.'
