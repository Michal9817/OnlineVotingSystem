import platform
import socket

# script for getting login data directory
# sciezka do pliku z loginem
def get_dir():
    host_name = socket.gethostname()
    os_name = platform.system()
    dir_=""
    if os_name == 'Linux':
        if host_name == 'raspberrypi':
            dir_ = '/home/pi/stuff/login.json'
        elif host_name == 'other':
            dir_ = '../jsons_and_johnsons/tmp/login.json'
        else:
            dir_ = '../jsons_and_johnsons/tmp/login.json'
    elif os_name == 'Windows':
        dir_ = '../jsons_and_johnsons/tmp/login.json'
    return dir_
