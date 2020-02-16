get_path = webvis_mods where

front_src = $(get_path --front)
back_src = $(get_path --back)

echo $(front_src)

install:
	webvis_mods install

requirements: req_py req_js
	@echo "Installed requirements"

req_py:
	pip3 install -r py_requirements.txt --user

req_js:
	cat js_requirements.txt|xargs npm install --global

