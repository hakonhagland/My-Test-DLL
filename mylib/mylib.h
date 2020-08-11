typedef void mylib_handler_t (const char *msg);
void mylib_apply_handler (const char *msg);
mylib_handler_t *mylib_set_foo_handler();
