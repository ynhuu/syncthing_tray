BIN="syncthing_tray"

clean:
	@rm ${BIN}

m1:
	@echo '${BIN} building...'
	@env go build -tags=nomsgpack -ldflags '-s -w' -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" -o syncthing_tray.app/Contents/MacOS/${BIN} main.go
	@du -sh ${BIN}


windows:
	@echo '${BIN} building...'
	@env go build -tags=nomsgpack -ldflags '-H=windowsgui -s -w' -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" -o ${BIN}.exe main.go
	@du -sh ${BIN}

upx: build
	@upx -9 ${BIN}

dev:
	@go run .