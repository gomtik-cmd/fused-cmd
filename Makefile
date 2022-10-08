install:
	sudo apt install gnome-screensaver python3 python3-pip cmake
	pip3 install opencv-python
	pip3 install face_recognition
	mkdir -p $(HOME)/.config/autostart
	mkdir -p $(HOME)/.fa/authorized
	cp authenticate.py $(HOME)/.fa/authenticate.py
	envsubst < fa.desktop > $(HOME)/.config/autostart/fa.desktop 
	chmod +x $(HOME)/.config/autostart/fa.desktop 

authorize:
	cp $(image) $(HOME)/.fa/authorized/admin.jpg
