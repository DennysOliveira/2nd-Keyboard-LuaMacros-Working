import KEYBOARD
#import win32com.client as comclt
import pyautogui
import ctypes

file = open("keypressed.txt", "r")

loopActive = true

while loopActive:
    if keyboard.is_pressed("{F24}"):
        key = file.read()
        callKey(key)
    continue
    printf("looping")
    

def callKey(value):
    value()

def enter():
    printf(enter)
