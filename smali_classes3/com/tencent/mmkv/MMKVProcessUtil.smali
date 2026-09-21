.class Lcom/tencent/mmkv/MMKVProcessUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static currentProcessName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 22
    sget-object v0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    sget-object p0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 26
    :cond_b
    invoke-static {}, Lcom/tencent/mmkv/MMKVProcessUtil;->getCurrentProcessNameByApplication()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 28
    sget-object p0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_1a
    invoke-static {}, Lcom/tencent/mmkv/MMKVProcessUtil;->getCurrentProcessNameByActivityThread()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 33
    sget-object p0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 36
    :cond_29
    invoke-static {p0}, Lcom/tencent/mmkv/MMKVProcessUtil;->getCurrentProcessNameByActivityManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/mmkv/MMKVProcessUtil;->currentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method private static getCurrentProcessNameByActivityManager(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 67
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_2b

    .line 69
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 71
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_18

    .line 73
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    .line 78
    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method private static getCurrentProcessNameByActivityThread()Ljava/lang/String;
    .registers 4

    .line 50
    const-string v0, ""

    .line 52
    :try_start_2
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 57
    check-cast v1, Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1e

    return-object v1

    :catchall_1e
    move-exception v1

    goto :goto_21

    :cond_20
    return-object v0

    .line 60
    :goto_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static getCurrentProcessNameByApplication()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
