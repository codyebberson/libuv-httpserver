httpserver: httpserver.c libuv/libuv.a http-parser/http_parser.o
	$(CC) -o httpserver \
	httpserver.c libuv/libuv.a http-parser/http_parser.o \
	-lpthread -lws2_32 -lpsapi -liphlpapi -I libuv/include

clean:
	$(MAKE) -C http-parser clean
	-$(RM) -r libuv/build
	-$(RM) -r libuv/uv.xcodeproj
	-$(RM) httpserver
