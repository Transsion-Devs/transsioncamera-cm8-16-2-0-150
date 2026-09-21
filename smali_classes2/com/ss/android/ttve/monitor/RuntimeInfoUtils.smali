.class public Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static abi:Ljava/lang/String; = null

.field private static appid:Ljava/lang/String; = null

.field private static cpu:Ljava/lang/String; = null

.field private static cpu_core:Ljava/lang/String; = null

.field private static cpu_freq:Ljava/lang/String; = null

.field private static device_brand:Ljava/lang/String; = null

.field private static external_storage:Ljava/lang/String; = null

.field private static inited:Z = false

.field private static memory:Ljava/lang/String; = null

.field private static model:Ljava/lang/String; = null

.field private static nativeInited:Z = false

.field private static os_sdk_int:Ljava/lang/String;

.field public static sNumberKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static screen_height:Ljava/lang/String;

.field private static screen_width:Ljava/lang/String;

.field private static storage:Ljava/lang/String;

.field private static ve_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils$1;

    invoke-direct {v0}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils$1;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->sNumberKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 151
    invoke-static {}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getCpuAbi()Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_1f

    const/4 v2, 0x0

    .line 67
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_1f

    .line 68
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 70
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 74
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 17
    sget-boolean v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->inited:Z

    if-nez v0, :cond_1c

    .line 18
    const-class v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;

    monitor-enter v0

    .line 19
    :try_start_7
    sget-boolean v1, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->inited:Z

    if-nez v1, :cond_18

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->initInternal(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 21
    sput-boolean p0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->inited:Z

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 23
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16

    throw p0

    :cond_1c
    return-void
.end method

.method private static initInternal(Landroid/content/Context;)V
    .registers 3

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->model:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->readCpuHardware()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu_freq:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getNumOfCores()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu_core:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->memory:Ljava/lang/String;

    .line 52
    const-string v0, "0"

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->storage:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->external_storage:Ljava/lang/String;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->os_sdk_int:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->screen_width:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->screen_height:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->appid:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->getCpuAbi()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->abi:Ljava/lang/String;

    .line 59
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object p0, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->device_brand:Ljava/lang/String;

    return-void
.end method

.method public static toMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v1, "model"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->model:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "cpu"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "cpu_freq"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu_freq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "cpu_core"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->cpu_core:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "memory"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->memory:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "storage"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->storage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "external_storage"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->external_storage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "screen_width"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->screen_width:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "screen_height"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->screen_height:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "os_sdk_int"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->os_sdk_int:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "appid"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->appid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "abi"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->abi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "brand"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->device_brand:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-boolean v1, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->nativeInited:Z

    if-nez v1, :cond_6b

    .line 139
    const-string v1, "11.8.4.8-alpha.142-cy-tob"

    sput-object v1, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->ve_version:Ljava/lang/String;

    const/4 v1, 0x1

    .line 140
    sput-boolean v1, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->nativeInited:Z

    .line 145
    :cond_6b
    const-string v1, "ve_version"

    sget-object v2, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->ve_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
