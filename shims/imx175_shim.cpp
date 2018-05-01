#include <cutils/log.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <string.h>

extern "C" {
  int property_get(const char * key, char * value, const char * default_value) {
    if (strcmp("ro.revision", key) == 0) {
      strcpy(value, "4");
      return 3;
    }

    return ((int( * )(const char * , char *, const char * ))(dlsym((void * ) - 1, "property_get")))(key, value, default_value);
  }
}
