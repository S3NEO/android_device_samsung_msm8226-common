// Copyright 2018 Leonardomeitz@gmail.com
// This is part of the NeoHomies Project

#include <stdio.h>
#include <string.h>

#include "helper.h"

static int raw_file_exists(){
	int ret;
	DIR *d;
	struct dirent *dir;

	ret = false;
	d = opendir(data_path);
	if (d) {
		while ((dir = readdir(d)) != NULL) {
			if (strstr(dir->d_name, "yuv") != NULL){
				return true;
			}
			printf("%s\n", dir->d_name);
		}
		closedir(d);
	}

	return ret;
}

static char *get_raw_file_name(){
	char *name;
	DIR *d;
	struct dirent *dir;

	name = NULL;
	d = opendir(data_path);
	if (d) {
		while ((dir = readdir(d)) != NULL) {
			if (strstr(dir->d_name, "yuv") != NULL){
				return dir->d_name;
			}
			printf("%s\n", dir->d_name);
		}
		closedir(d);
	}

	return name;
}

static int copy_raw_file(char *name){
	// TODO
}

static int delete_raw_file(char *name){
	// TODO
}

int main(){
	if (raw_file_exists()) {
		char *name = get_raw_file_name();
		if (name != NULL) {
			// TODO
			if ((copy_raw_file(name) && delete_raw_file(name)) != NULL) {
				return true;
			}
			else {
				// Error while copying/deleting
				return false;
			}
		}
		else {
			// This should happen, abort!
			exit(EXIT_FAILURE);
		}
	}
	else {
		// Called but no file found
		// Retry in 400 msec
		// TODO
		
	}
}
