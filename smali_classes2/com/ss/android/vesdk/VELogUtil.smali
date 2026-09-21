.class public Lcom/ss/android/vesdk/VELogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VELogUtil$LogData;
    }
.end annotation


# static fields
.field private static APPNAME:Ljava/lang/String; = "VESDK-"

.field private static AUTO_TEST_MONITOR:Ljava/lang/String; = "monitorInfo"

.field public static final BEF_LOG_LEVEL_DEBUG:I = 0x3

.field public static final BEF_LOG_LEVEL_DEFAULT:I = 0x1

.field public static final BEF_LOG_LEVEL_ERROR:I = 0x6

.field public static final BEF_LOG_LEVEL_FATAL:I = 0x7

.field public static final BEF_LOG_LEVEL_INFO:I = 0x4

.field public static final BEF_LOG_LEVEL_NONE:I = 0x0

.field public static final BEF_LOG_LEVEL_SILENT:I = 0x8

.field public static final BEF_LOG_LEVEL_VERBOSE:I = 0x2

.field public static final BEF_LOG_LEVEL_WARN:I = 0x5

.field private static DEBUG_LEVEL:B = 0x7t

.field private static final LOGD:B = 0x8t

.field private static final LOGE:B = 0x1t

.field private static final LOGI:B = 0x4t

.field private static final LOGN:B = 0x0t

.field private static final LOGV:B = 0x10t

.field private static final LOGW:B = 0x2t

.field public static final LOG_LEVEL_D:B = 0xft

.field public static final LOG_LEVEL_E:B = 0x1t

.field public static final LOG_LEVEL_I:B = 0x7t

.field public static final LOG_LEVEL_N:B = 0x0t

.field public static final LOG_LEVEL_V:B = 0x1ft

.field public static final LOG_LEVEL_W:B = 0x3t


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static __FILE__()Ljava/lang/String;
    .registers 2

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 295
    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1e

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_1e
    const-string v0, "unknown file"

    return-object v0
.end method

.method public static __FUNCTION__()Ljava/lang/String;
    .registers 2

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 322
    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1e

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_1e
    const-string v0, "unknown function"

    return-object v0
.end method

.method public static __LINE__()I
    .registers 2

    .line 308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 309
    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1e

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    return v0

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 138
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 242
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 252
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_36

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Throwable msg is : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 169
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static varargs formatLog(Ljava/lang/String;Ljava/lang/String;[Lcom/ss/android/vesdk/VELogUtil$LogData;)Ljava/lang/String;
    .registers 7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%s; (Msg): {%s}; "

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    .line 342
    array-length p0, p2

    const/4 p1, 0x0

    :goto_13
    if-ge p1, p0, :cond_2f

    aget-object v1, p2, p1

    if-eqz v1, :cond_2c

    .line 344
    iget-object v2, v1, Lcom/ss/android/vesdk/VELogUtil$LogData;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/ss/android/vesdk/VELogUtil$LogData;->value:Ljava/lang/String;

    iget-object v1, v1, Lcom/ss/android/vesdk/VELogUtil$LogData;->des:Ljava/lang/String;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%s): {%s}[%s], "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 348
    :cond_2f
    const-string p0, "_for_auto_analysis_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogLevel()B
    .registers 1

    .line 286
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    return v0
.end method

.method public static getLogLevel(B)B
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_19

    const/16 v0, 0xf

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/16 p0, 0x10

    return p0

    :cond_16
    const/16 p0, 0x8

    return p0

    :cond_19
    const/4 p0, 0x4

    return p0

    :cond_1b
    const/4 p0, 0x2

    return p0

    :cond_1d
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 127
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static log(BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 193
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    and-int/2addr v0, p0

    if-eqz v0, :cond_19

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 119
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_23

    .line 120
    sget-object v0, Lcom/ss/android/vesdk/VELogUtil;->AUTO_TEST_MONITOR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static setUp(Ljava/lang/String;B)V
    .registers 4

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    .line 99
    :cond_1e
    sput-byte p1, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    .line 100
    invoke-static {p1}, Lcom/ss/android/vesdk/VELogUtil;->getLogLevel(B)B

    move-result p0

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TELogcat;->setLogLevel(B)V

    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 179
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 222
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 232
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_36

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Throwable msg is : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 148
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 158
    sget-byte v0, Lcom/ss/android/vesdk/VELogUtil;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_32

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/vesdk/VELogUtil;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Throwable msg is : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/ss/android/ttve/nativePort/TELogcat;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method
