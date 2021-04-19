LOCAL_PATH:= $(call my-dir)

PA_DEFINES := \
  -DHAVE_GETADDRINFO \
  -DHAVE_NANOSLEEP \
  -DHAVE_SIGACTION \
  -DHAVE_ARPA_INET_H \
  -DHAVE_ALSA \
  -DHAVE_CLOCK_GETTIME \
  -DHAVE_CTIME_R \
  -DHAVE_FCHMOD \
  -DHAVE_FCHOWN \
  -DHAVE_FORK \
  -DHAVE_FSTAT \
  -DHAVE_GETPWNAM_R \
  -DHAVE_GETPWUID_R \
  -DHAVE_GETTIMEOFDAY \
  -DHAVE_GETUID \
  -DHAVE_GRP_H \
  -DHAVE_IPV6 \
  -DHAVE_LSTAT \
  -DHAVE_MLOCK \
  -DHAVE_NETDB_H \
  -DHAVE_NETINET_IN_H \
  -DHAVE_NETINET_IN_SYSTM_H \
  -DHAVE_NETINET_IP_H \
  -DHAVE_NETINET_TCP_H \
  -DHAVE_PIPE \
  -DHAVE_PIPE2 \
  -DHAVE_PTHREAD \
  -DHAVE_PWD_H \
  -DHAVE_READLINE \
  -DHAVE_REGEX_H \
  -DHAVE_SCHED_H \
  -DHAVE_SETRESGID \
  -DHAVE_SETRESUID \
  -DHAVE_SETSID \
  -DHAVE_SIGACTION \
  -DHAVE_STD_BOOL \
  -DHAVE_SYMLINK \
  -DHAVE_SYS_EVENTFD_H \
  -DHAVE_SYS_IOCTL_H \
  -DHAVE_SYSLOG_H \
  -DHAVE_SYS_PRCTL_H \
  -DHAVE_SYS_RESOURCE_H \
  -DHAVE_SYS_SELECT_H \
  -DHAVE_SYS_SOCKET_H \
  -DHAVE_SYS_SYSCALL_H \
  -DHAVE_SYS_UN_H \
  -DHAVE_SYS_WAIT_H \
  -DHAVE_UNAME \
  -DHAVE_STRERROR_R \
  -DHAVE_SYSCONF \
  -DHAVE_POLL_H \
  -DPAGE_SIZE=4096 \
  -DPA_BINARY=\"/vendor/bin/pulseaudio\" \
  -DPA_DEFAULT_CONFIG_DIR=\"/vendor/etc/pulse\" \
  -DATOMIC_ARM_LINUX_HELPERS \
  -DGETGROUPS_T=gid_t \
  -DPA_MACHINE_ID=\"/usr/var/lib/dbus/machine-id\" \
  -DPA_MACHINE_ID_FALLBACK=\"/usr/etc/machine-id\" \
  -DPA_SYSTEM_RUNTIME_PATH=\"/run/user/1000/pulse\" \
  -DPA_BUILDDIR=\"\" \
  -DPA_DLSEARCHPATH=\"/vendor/lib/pulse\" \
  -DPA_SYSTEM_USER=\"system\" \
  -DPA_SYSTEM_GROUP=\"system\" \
  -DPA_SYSTEM_STATE_PATH=\"/data/local/pulse\" \
  -DPA_SYSTEM_CONFIG_PATH=\"/vendor/etc/pulse\" \
  -DDISABLE_ORC \
  -DPACKAGE \
  -DPACKAGE_NAME=\"pulseaudio\" \
  -DPACKAGE_VERSION=\"1.99\" \
  -DCANONICAL_HOST=\"\" \
  -DPA_CFLAGS=\"\" \
  -DPA_ALSA_PROFILE_SETS_DIR=\"/vendor/etc/pulse/profiles\" \
  -DPA_ALSA_PATHS_DIR=\"/vendor/etc/pulse/paths\" \
  -DPA_ACCESS_GROUP=\"audio\" \
  -UNDEBUG \
  -D_POSIX_SOURCE \
  -Wno-error

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
  pulse/channelmap.c \
  pulse/client-conf.c  \
  pulse/context.c \
  pulsecore/arpa-inet.c  \
  pulsecore/aupdate.c  \
  pulsecore/authkey.c  \
  pulsecore/bitset.c  \
  pulsecore/conf-parser.c  \
  pulsecore/core-error.c  \
  pulsecore/core-format.c \
  pulsecore/core-rtclock.c  \
  pulsecore/core-util.c  \
  pulsecore/dynarray.c  \
  pulsecore/fdsem.c \
  pulsecore/flist.c  \
  pulsecore/hashmap.c  \
  pulsecore/i18n.c \
  pulsecore/idxset.c  \
  pulsecore/iochannel.c  \
  pulsecore/ioline.c  \
  pulsecore/ipacl.c  \
  pulsecore/lock-autospawn.c  \
  pulsecore/log.c  \
  pulsecore/mcalign.c  \
  pulsecore/memblock.c  \
  pulsecore/memblockq.c  \
  pulsecore/memchunk.c  \
  pulsecore/memtrap.c  \
  pulsecore/mutex-posix.c \
  pulsecore/native-common.c \
  pulsecore/once.c  \
  pulsecore/packet.c  \
  pulsecore/parseaddr.c  \
  pulsecore/pdispatch.c  \
  pulsecore/pid.c  \
  pulsecore/pipe.c  \
  pulsecore/proplist-util.c  \
  pulsecore/pstream.c  \
  pulsecore/pstream-util.c  \
  pulsecore/queue.c  \
  pulsecore/random.c  \
  pulsecore/ratelimit.c  \
  pulsecore/sample-util.c \
  pulsecore/semaphore-posix.c \
  pulsecore/shm.c  \
  pulsecore/sndfile-util.c \
  pulsecore/socket-client.c  \
  pulsecore/socket-server.c  \
  pulsecore/socket-util.c  \
  pulsecore/srbchannel.c \
  pulsecore/strbuf.c  \
  pulsecore/strlist.c  \
  pulsecore/tagstruct.c  \
  pulsecore/thread-posix.c \
  pulsecore/time-smoother.c  \
  pulsecore/tokenizer.c  \
  pulsecore/usergroup.c  \
  pulse/direction.c \
  pulse/error.c \
  pulse/ext-device-manager.c \
  pulse/ext-device-restore.c \
  pulse/ext-stream-restore.c \
  pulse/fork-detect.c  \
  pulse/format.c \
  pulse/introspect.c \
  pulse/json.c \
  pulse/mainloop-api.c \
  pulse/mainloop.c \
  pulse/mainloop-signal.c \
  pulse/operation.c \
  pulse/proplist.c \
  pulse/rtclock.c \
  pulse/sample.c \
  pulse/scache.c \
  pulse/stream.c \
  pulse/subscribe.c \
  pulse/thread-mainloop.c \
  pulse/timeval.c \
  pulse/utf8.c \
  pulse/util.c \
  pulse/volume.c \
  pulse/xmalloc.c


LOCAL_C_INCLUDES += external/json-c \
  external/alsa-lib/include \
  external/libsndfile/src

LOCAL_CFLAGS := -std=gnu99 $(PA_DEFINES) -DHAVE_SYS_MMAN_H -D_GNU_SOURCE
LOCAL_MODULE := libpulse
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SHARED_LIBRARIES:= libjson libasound libsndfile
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
