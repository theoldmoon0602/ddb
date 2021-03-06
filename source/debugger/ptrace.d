module debugger.ptrace;

import core.stdc.stdio;
import core.sys.posix.sys.types;

extern(C) long ptrace(long request, pid_t pid, void *addr,
void *data);

version(X86_64) {
  enum PTRACE_TRACEME = 0;
  enum PTRACE_PEEKTEXT = 1;
  enum PTRACE_PEEKDATA = 2;
  enum PTRACE_PEEKUSER = 3;
  enum PTRACE_POKETEXT = 4;
  enum PTRACE_POKEDATA = 5;
  enum PTRACE_POKEUSER = 6;
  enum PTRACE_CONT = 7;
  enum PTRACE_KILL = 8;
  enum PTRACE_SINGLESTEP = 9;
  enum PTRACE_GETREGS = 12;
  enum PTRACE_SETREGS = 13;
  enum PTRACE_GETFPREGS = 14;
  enum PTRACE_SETFPREGS = 15;
  enum PTRACE_ATTACH = 16;
  enum PTRACE_DETACH = 17;
  enum PTRACE_GETFPXREGS = 18;
  enum PTRACE_SETFPXREGS = 19;
  enum PTRACE_SYSCALL = 24;
  enum PTRACE_GET_THREAD_AREA = 25;
  enum PTRACE_SET_THREAD_AREA = 26;

  enum PTRACE_ARCH_PRCTL = 30;

  enum PTRACE_SYSEMU = 31;
  enum PTRACE_SYSEMU_SINGLESTEP = 32;
  enum PTRACE_SINGLEBLOCK = 33;
  enum PTRACE_SETOPTIONS = 0x4200;
  enum PTRACE_GETEVENTMSG = 0x4201;
  enum PTRACE_GETSIGINFO = 0x4202;
  enum PTRACE_SETSIGINFO = 0x4203;
  enum PTRACE_GETREGSET = 0x4204;
  enum PTRACE_SETREGSET = 0x4205;
  enum PTRACE_SEIZE = 0x4206;
  enum PTRACE_INTERRUPT = 0x4207;
  enum PTRACE_LISTEN = 0x4208;
  enum PTRACE_PEEKSIGINFO = 0x4209;
  enum PTRACE_GETSIGMASK = 0x420a;
  enum PTRACE_SETSIGMASK = 0x420b;
  enum PTRACE_SECCOMP_GET_FILTER = 0x420c;
  enum PTRACE_SECCOMP_GET_METADATA = 0x420d;
}
else {
  enum PTRACE_TRACEME = 0;
  enum PTRACE_PEEKTEXT = 1;
  enum PTRACE_PEEKDATA = 2;
  enum PTRACE_PEEKUSER = 3;
  enum PTRACE_POKETEXT = 4;
  enum PTRACE_POKEDATA = 5;
  enum PTRACE_POKEUSER = 6;
  enum PTRACE_CONT = 7;
  enum PTRACE_KILL = 8;
  enum PTRACE_SINGLESTEP = 9;
  enum PTRACE_GETREGS = 12;
  enum PTRACE_SETREGS = 13;
  enum PTRACE_GETFPREGS = 14;
  enum PTRACE_SETFPREGS = 15;
  enum PTRACE_ATTACH = 16;
  enum PTRACE_DETACH = 17;
  enum PTRACE_GETFPXREGS = 18;
  enum PTRACE_SETFPXREGS = 19;
  enum PTRACE_SYSCALL = 24;
  enum PTRACE_GET_THREAD_AREA = 25;
  enum PTRACE_SET_THREAD_AREA = 26;
  enum PTRACE_SYSEMU = 31;
  enum PTRACE_SYSEMU_SINGLESTEP = 32;
  enum PTRACE_SINGLEBLOCK = 33;
  enum PTRACE_SETOPTIONS = 0x4200;
  enum PTRACE_GETEVENTMSG = 0x4201;
  enum PTRACE_GETSIGINFO = 0x4202;
  enum PTRACE_SETSIGINFO = 0x4203;
  enum PTRACE_GETREGSET = 0x4204;
  enum PTRACE_SETREGSET = 0x4205;
  enum PTRACE_SEIZE = 0x4206;
  enum PTRACE_INTERRUPT = 0x4207;
  enum PTRACE_LISTEN = 0x4208;
  enum PTRACE_PEEKSIGINFO = 0x4209;
  enum PTRACE_GETSIGMASK = 0x420a;
  enum PTRACE_SETSIGMASK = 0x420b;
  enum PTRACE_SECCOMP_GET_FILTER = 0x420c;
  enum PTRACE_SECCOMP_GET_METADATA = 0x420d;
}
