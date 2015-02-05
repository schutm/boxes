BUILD_DIR = ../../Build/boxes
OUTPUT_DIR = ../../Output/boxes

.PHONY: all clean debian32

all: debian32

clean:
	rm -rf $(BUILD_DIR)/*
	rm -rf $(OUTPUT_DIR)/*

debian32:
	rm -rf $(BUILD_DIR)/debian-i386_*
	PACKER_CACHE_DIR=$(BUILD_DIR)/Cache packer build -var output_dir=$(OUTPUT_DIR) -var build_dir=$(BUILD_DIR) -var-file=debian32.json debian-template.json
