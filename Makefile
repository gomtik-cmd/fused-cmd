install:
	sudo apt install gnome-screensaver python3 python3-pip cmake
	python-pip install opencv-python
	python-pip install face_recognition
	mkdir -p $(HOME)/.config/autostart
	mkdir -p $(HOME)/.fa/authorized
	envsubst < fa.desktop > $(HOME)/.config/autostart/fa.desktop 
	chmod +x $(HOME)/.config/autostart/fa.desktop 

authorize:
	cp $(image) $(HOME)/.fa/authorized/admin.jpg
