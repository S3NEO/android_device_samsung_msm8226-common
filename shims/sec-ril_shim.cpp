#include <cutils/log.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <string.h>

extern "C" {
  int pcap_wrah(void) {
	ALOGE("%s: pcap_wrap() called!\n", __func__);
	return 0;
  }
}
