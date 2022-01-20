conf_default = {$conf_path} is missing! Generating a template ...
conf_old = Old configuration detected, updating ...
edit_conf = You may need to edit {$conf_path} before continuing
empty_list = Empty kernel list
invalid_esp = Invalid ESP_MOUNTPOINT
invalid_index = Invalid kernel index
no_kernel = No kernel found
invalid_kernel_filename = Invalid kernel filename
info_path_not_exist = It seems that you have not initialized systemd-boot-friend yet.
    systemd-boot-friend can help you install and configure systemd-boot. Simply execute `systemd-boot-friend init`.
err_path_not_exist = {$path} not found
skip_incomplete_kernel = Skipping incomplete kernel {$kernel} ...
skip_unidentified_kernel = Skipping unidentified kernel {$kernel} ...

initialize = Initializing systemd-boot ...
create_folder = Creating folder structure for friend ...
install = Installing {$kernel} to {$path} ...
install_ucode = intel-ucode detected. Installing ...
ask_overwrite = {$entry} already exists. Overwrite?
no_overwrite = Doing nothing on this file.
overwrite = Overwriting {$entry} ...
create_entry = Creating boot entry for {$kernel} at {$path} ...
remove_kernel = Removing {$kernel} kernel ...
remove_entry = Removing {$kernel} boot entry ...