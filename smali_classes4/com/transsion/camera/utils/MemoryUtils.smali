.class public abstract Lcom/transsion/camera/utils/MemoryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static isAllowSlowMethod:Z

.field private static isAvailable:Z

.field private static sActivityManager:Landroid/app/ActivityManager;

.field private static sAllowRecordMemoryInfo:Z

.field private static sBinderDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sContext:Landroid/content/Context;

.field private static sJavaHeapDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sLastDumpSlowTime:J

.field private static sMemoryCheckRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPrevAvailableMemory:J

.field private static sThreadDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTotalMemorySize:J


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisAllowSlowMethod()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAllowSlowMethod:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisAvailable()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsBinderDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sBinderDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsJavaHeapDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sJavaHeapDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsLastDumpSlowTime()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sLastDumpSlowTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetsMemoryCheckRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sMemoryCheckRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsPrevAvailableMemory()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sPrevAvailableMemory:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfputsLastDumpSlowTime(J)V
    .registers 2

    .line 0
    sput-wide p0, Lcom/transsion/camera/utils/MemoryUtils;->sLastDumpSlowTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsPrevAvailableMemory(J)V
    .registers 2

    .line 0
    sput-wide p0, Lcom/transsion/camera/utils/MemoryUtils;->sPrevAvailableMemory:J

    return-void
.end method

.method static bridge synthetic -$$Nest$smdumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/MemoryUtils;->dumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smdumpThread()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->dumpThread()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smformat(J)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/MemoryUtils;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smformatKBToMB(J)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/MemoryUtils;->formatKBToMB(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetAvailableMemoryInternal()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemoryInternal()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smgetLeakTypeString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/utils/MemoryUtils;->getLeakTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetUsedJavaHeapMemory()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getUsedJavaHeapMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MemoryUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sJavaHeapDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sBinderDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sThreadDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sMemoryCheckRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sLastDumpSlowTime:J

    return-void
.end method

.method private static dumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z
    .registers 8

    .line 407
    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b2

    .line 408
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/MemoryUtils;->setDumpCount(Ljava/lang/String;I)V

    .line 409
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_b2

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "/sdcard/hprof/memory_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getCurrentDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".hprof"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    :try_start_3b
    new-instance p2, Ljava/io/File;

    const-string v0, "/sdcard/hprof/"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_58

    .line 414
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_58

    .line 416
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Failed to create directory: /sdcard/hprof/"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :catch_56
    move-exception p0

    goto :goto_ab

    .line 420
    :cond_58
    sget-object p2, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HPROF file dump start ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 422
    invoke-static {p1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_7a} :catch_56

    .line 424
    :try_start_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HPROF file dump end ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], file dumped to:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,time:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_a8} :catch_a9

    return v2

    :catch_a9
    move-exception p0

    move v1, v2

    .line 426
    :goto_ab
    sget-object p1, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "Failed to dump HPROF file"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b2
    return v1
.end method

.method private static dumpThread()Z
    .registers 14

    .line 356
    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_166

    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sThreadDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_166

    .line 357
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sThreadDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string v3, "thread_count"

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/MemoryUtils;->setDumpCount(Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 359
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/hprof/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_38

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_38

    .line 363
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to create directory: /sdcard/hprof/"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_38
    const/4 v0, 0x0

    .line 370
    :try_start_39
    sget-object v6, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "Java thread file dump start."

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thread_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getCurrentDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_14e

    .line 373
    :try_start_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== Dump Thread at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getCurrentDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ===\n\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_118

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 376
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;

    .line 377
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", p="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")\n"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 378
    invoke-virtual {v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    array-length v8, v7
    :try_end_ec
    .catchall {:try_start_69 .. :try_end_ec} :catchall_111

    move v9, v1

    :goto_ed
    const-string v10, "\n"

    if-ge v9, v8, :cond_113

    :try_start_f1
    aget-object v11, v7, v9

    .line 383
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_ed

    :catchall_111
    move-exception v0

    goto :goto_151

    .line 385
    :cond_113
    invoke-virtual {v5, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 387
    :cond_118
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V
    :try_end_11b
    .catchall {:try_start_f1 .. :try_end_11b} :catchall_111

    .line 389
    :try_start_11b
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Java thread file dump end, file dumped to: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", time:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_147
    .catchall {:try_start_11b .. :try_end_147} :catchall_14b

    .line 395
    :try_start_147
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_15e

    goto :goto_15e

    :catchall_14b
    move-exception v0

    move v1, v2

    goto :goto_151

    :catchall_14e
    move-exception v2

    move-object v5, v0

    move-object v0, v2

    .line 391
    :goto_151
    :try_start_151
    sget-object v2, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Failed to dump threads"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_15f

    if-eqz v5, :cond_15d

    .line 395
    :try_start_15a
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_15d

    :catch_15d
    :cond_15d
    move v2, v1

    :catch_15e
    :goto_15e
    return v2

    :catchall_15f
    move-exception v0

    if-eqz v5, :cond_165

    :try_start_162
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_165

    .line 400
    :catch_165
    :cond_165
    throw v0

    :cond_166
    return v1
.end method

.method private static format(J)Ljava/lang/String;
    .registers 5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatKBToMB(J)Ljava/lang/String;
    .registers 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x400

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityCount()I
    .registers 4

    .line 263
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_43

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 272
    :try_start_1d
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_21} :catch_3a

    if-eqz v1, :cond_11

    .line 278
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_11

    .line 279
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/utils/MemoryUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 280
    iget v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    goto :goto_44

    :catch_3a
    move-exception v1

    .line 274
    sget-object v2, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "getActivityCount: invalid task, skip."

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0
.end method

.method public static getAvailableMemory()J
    .registers 4

    .line 244
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sPrevAvailableMemory:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getAvailableMemoryInternal()J
    .registers 2

    .line 248
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_11

    .line 249
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 250
    sget-object v1, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 251
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getCurrentDate()Ljava/lang/String;
    .registers 2

    .line 340
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDumpCount(Ljava/lang/String;)I
    .registers 3

    .line 345
    const-string v0, "memory_info"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    .line 346
    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getLeakTypeString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_28

    .line 446
    const-string p0, "unknown"

    return-object p0

    .line 445
    :pswitch_6
    const-string p0, "Swap"

    return-object p0

    .line 444
    :pswitch_9
    const-string p0, "System"

    return-object p0

    .line 443
    :pswitch_c
    const-string p0, "PrivateOther"

    return-object p0

    .line 442
    :pswitch_f
    const-string p0, "Graphics"

    return-object p0

    .line 441
    :pswitch_12
    const-string p0, "Code"

    return-object p0

    .line 440
    :pswitch_15
    const-string p0, "Stack"

    return-object p0

    .line 439
    :pswitch_18
    const-string p0, "NativeHeap"

    return-object p0

    .line 438
    :pswitch_1b
    const-string p0, "ProxyBinder"

    return-object p0

    .line 437
    :pswitch_1e
    const-string p0, "LocalBinder"

    return-object p0

    .line 436
    :pswitch_21
    const-string p0, "JavaHeap"

    return-object p0

    .line 435
    :pswitch_24
    const-string p0, "Normal"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getMemoryString()Ljava/lang/String;
    .registers 4

    .line 323
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 326
    const-string v0, "2gb"

    return-object v0

    :cond_b
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    .line 328
    const-string v0, "3gb"

    return-object v0

    :cond_14
    const-wide/16 v2, 0xfa0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    .line 330
    const-string v0, "4gb"

    return-object v0

    :cond_1d
    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    .line 332
    const-string v0, "6gb"

    return-object v0

    .line 334
    :cond_26
    const-string v0, "8gb"

    return-object v0
.end method

.method public static getTotalMemory()J
    .registers 2

    .line 293
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sTotalMemorySize:J

    return-wide v0
.end method

.method private static getTotalMemoryInternal()J
    .registers 4

    .line 297
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_15

    .line 298
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 299
    sget-object v1, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 300
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getUsedJavaHeapMemory()J
    .registers 5

    .line 257
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 4

    .line 69
    sput-object p0, Lcom/transsion/camera/utils/MemoryUtils;->sContext:Landroid/content/Context;

    .line 70
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/transsion/camera/utils/MemoryUtils;->sActivityManager:Landroid/app/ActivityManager;

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemoryInternal()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sTotalMemorySize:J

    .line 72
    sput-boolean p1, Lcom/transsion/camera/utils/MemoryUtils;->sAllowRecordMemoryInfo:Z

    .line 73
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->sJavaHeapDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p1, "java_heap_count"

    invoke-static {p1}, Lcom/transsion/camera/utils/MemoryUtils;->getDumpCount(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 74
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->sBinderDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p1, "binder_count"

    invoke-static {p1}, Lcom/transsion/camera/utils/MemoryUtils;->getDumpCount(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 75
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->sThreadDumpCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p1, "thread_count"

    invoke-static {p1}, Lcom/transsion/camera/utils/MemoryUtils;->getDumpCount(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 76
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[init] Total memory size is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sTotalMemorySize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->sAllowRecordMemoryInfo:Z

    if-eqz v0, :cond_52

    const-string v0, "memory information is recorded"

    goto :goto_54

    :cond_52
    const-string v0, "no memory information is recorded."

    :goto_54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static initMemorySwitch()V
    .registers 3

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    .line 83
    sput-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAllowSlowMethod:Z

    goto :goto_28

    .line 85
    :cond_c
    const-string v0, "debug.cam.dump_hprof"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    .line 86
    const-string v0, "debug.cam.allow_slow_method"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->isAllowSlowMethod:Z

    .line 88
    :goto_28
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initMemorySwitch] isAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/utils/MemoryUtils;->isAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isAllowSlowMethod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/utils/MemoryUtils;->isAllowSlowMethod:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static judgeMemory()I
    .registers 4

    .line 306
    sget-wide v0, Lcom/transsion/camera/utils/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    const/4 v0, 0x2

    return v0

    :cond_a
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    const/4 v0, 0x3

    return v0

    :cond_12
    const-wide/16 v2, 0xfa0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    const/4 v0, 0x4

    return v0

    :cond_1a
    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gtz v0, :cond_22

    const/4 v0, 0x6

    return v0

    :cond_22
    const/16 v0, 0x8

    return v0
.end method

.method public static logAvailMemoryAsync(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logAvailMemoryAsync(Ljava/lang/String;Z)V
    .registers 5

    .line 104
    sget-boolean v0, Lcom/transsion/camera/utils/MemoryUtils;->sAllowRecordMemoryInfo:Z

    if-eqz v0, :cond_22

    .line 105
    sget-object v0, Lcom/transsion/camera/utils/MemoryUtils;->sMemoryCheckRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 106
    sget-object p0, Lcom/transsion/camera/utils/MemoryUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "logAvailMemory skipped (previous task still running)"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_14
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/MemoryUtils$1;

    const-string v2, "logAvailMemoryAsync"

    invoke-direct {v1, v2, p1, p0}, Lcom/transsion/camera/utils/MemoryUtils$1;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    :cond_22
    return-void
.end method

.method private static setDumpCount(Ljava/lang/String;I)V
    .registers 3

    .line 350
    const-string v0, "memory_info"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    return-void
.end method
