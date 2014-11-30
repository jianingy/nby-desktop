.PHONY: all

all: build

laptop:
	sudo salt-call -ldebug --local --file-root states --pillar-root pillars state.sls laptop 

user:
	salt-call -c etc -ldebug --local --file-root states --pillar-root pillars state.sls user

pillar.items:
	salt-call -ldebug --local --file-root states --pillar-root pillars pillar.items

sync:
	rsync -avP . ubuntu@192.168.122.230:~/nby-desktop
