.class public abstract Lcom/transsion/camera/utils/MonkeyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sIsUserAMonkey:Z

.field private static sSpecialMonkeySupported:Z


# direct methods
.method static bridge synthetic -$$Nest$sminitInternal()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->initInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MonkeyUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/MonkeyUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static closeAllForFinalMonkeyTest()Z
    .registers 1

    .line 69
    sget-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isCloseAllForMonkey()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static disableAlgoPolicy()Z
    .registers 4

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    .line 62
    sget-object v0, Lcom/transsion/camera/utils/MonkeyUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "The available memory is lower than 800,close multiple frame algo."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static init()V
    .registers 3

    .line 20
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/MonkeyUtils$1;

    const-string v2, "MonkeyUtils_Init"

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/MonkeyUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private static initInternal()V
    .registers 6

    .line 29
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/MonkeyUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Normal scene,exist."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    sput-boolean v1, Lcom/transsion/camera/utils/MonkeyUtils;->sSpecialMonkeySupported:Z

    return-void

    .line 35
    :cond_13
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v2

    .line 36
    const-string v0, "debug.cam.special_monkey_support"

    const-string v4, "1"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    sget-boolean v4, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    if-eqz v4, :cond_36

    if-eqz v0, :cond_36

    const-wide/16 v4, 0xfa0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_35

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    sput-boolean v1, Lcom/transsion/camera/utils/MonkeyUtils;->sSpecialMonkeySupported:Z

    .line 40
    sget-object v0, Lcom/transsion/camera/utils/MonkeyUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init monkey parameter, sSpecialMonkeySupported is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/utils/MonkeyUtils;->sSpecialMonkeySupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sIsUserAMonkey\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static isLowMemory()Z
    .registers 4

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserAMonkey()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    return v0
.end method

.method public static specialMonkeySupported()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->sSpecialMonkeySupported:Z

    return v0
.end method

.method public static updateIsUserMonkey()Z
    .registers 1

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->sIsUserAMonkey:Z

    return v0
.end method
