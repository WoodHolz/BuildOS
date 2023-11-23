#include "print.h"
#include "init.h"
#include "thread.h"
#include "interrupt.h"
#include "console.h"
#include "process.h"
#include "syscall-init.h"
#include "syscall.h"
#include "stdio.h"
#include "memory.h"
#include "dir.h"
#include "fs.h"

int main(void) {
   init_all();
   printf("/dir1/subdir1 create %s!\n", sys_mkdir("/dir1/subdir1") == 0 ? "done" : "fail");
   printf("/dir1 create %s!\n", sys_mkdir("/dir1") == 0 ? "done" : "fail");
   struct dir* p_dir = sys_opendir("/dir1/subdir1");
   if (p_dir) {
      printf("/dir1/subdir1 open done!\ncontent:\n");
      char* type = NULL;
      struct dir_entry* dir_e = NULL;
      while((dir_e = sys_readdir(p_dir))) { 
	 if (dir_e->f_type == FT_REGULAR) {
	    type = "regular";
	 } else {
	    type = "directory";
	 }
	 printf("      %s   %s\n", type, dir_e->filename);
      }
      if (sys_closedir(p_dir) == 0) {
	 printf("/dir1/subdir1 close done!\n");
      } else {
	 printf("/dir1/subdir1 close fail!\n");
      }
   } else {
      printf("/dir1/subdir1 open fail!\n");
   }
   return 0;
}
