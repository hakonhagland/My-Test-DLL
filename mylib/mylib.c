#include <stdio.h>
#include <stdlib.h>
#include "mylib.h"

mylib_handler_t * my_handler = NULL;
void mylib_apply_handler (const char *msg)
{
    if (my_handler) {
      (*my_handler) (msg);
      return ;
    }

    printf ("ERROR: no handler installed\n");
    fflush (stdout);
    abort ();
}

static mylib_handler_t *set_my_handler (mylib_handler_t *new_handler)
{
  mylib_handler_t *previous_handler = my_handler;
  my_handler = new_handler;
  return previous_handler;
}

static void foo_handler(const char *msg)
{
    printf("Foo handler: %s\n", msg);
}

mylib_handler_t *mylib_set_foo_handler()
{
    return set_my_handler(foo_handler);
}
