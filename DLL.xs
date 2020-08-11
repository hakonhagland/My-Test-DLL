#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "mylib.h"

MODULE = My::Test::DLL  PACKAGE = My::Test::DLL
PROTOTYPES: DISABLE

void
apply_handler(msg)
    const char *msg

  CODE:
    mylib_apply_handler(msg);


SV *
set_foo_handler()
  CODE:
     mylib_handler_t *old_handler = mylib_set_foo_handler();
     RETVAL = newSVuv(PTR2IV(old_handler));

  OUTPUT:
     RETVAL
