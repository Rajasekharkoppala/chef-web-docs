BUILDDIR = build
BUILD_COMMAND = sphinx-build -a -W
BUILD_COMMAND_AND_ARGS = $(BUILD_COMMAND)

docs:
	mkdir -p $(BUILDDIR)
	cp -r misc/robots.txt build/
	cp -r misc/sitemap.xml build/
	cp -r misc/google69a8711569b2fcce.html build/
	$(BUILD_COMMAND_AND_ARGS) chef_master/source $(BUILDDIR)
	bash doctools/rundtags.sh

clean:
	@rm -rf $(BUILDDIR)
