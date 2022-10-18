from ctypes import *
import pyautogui
import time
time.sleep(5)
# while 1:
    # windll.user32.SetCursorPos(600,300);
    # windll.user32.SetCursorPos(900,300);
pyautogui.click(600, 670, clicks=1, interval=0.0, button='left')
time.sleep(2)
print("finish")
