import numpy as np
import cv2

video = cv2.VideoCapture("F:\Home\V.Panfilov\## PROJECTS\EDA\electronics4rc\BanoMy\Video\Маячок.wmv")

i=0
while(True):
	ret, frame = video.read()
	h,w,bpp = np.shape(frame)
	fi = 0
	for py in range(0,h):
		for px in range(0,w):
			fi += frame[py][px][1]
	i+=1
	print (i,";", fi/640/480)	
	

		
video.release()
cv2.destroyAllWindows()