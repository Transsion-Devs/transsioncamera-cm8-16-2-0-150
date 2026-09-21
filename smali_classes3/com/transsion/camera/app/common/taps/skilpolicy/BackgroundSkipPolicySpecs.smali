.class public Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_SHOT_2_SHOT_COUNT:I

.field private static final BACKGROUND_SHOT_2_SHOT_EXTRA_COUNT:I

.field private static final EXTRA_MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

.field private static final LOW_MEM_MAP:Landroid/util/SparseArray;

.field private static final MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

.field private static final MEM_LEVEL:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentTemperature:I

.field private final mThermalThrottleListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# direct methods
.method static bridge synthetic -$$Nest$fputmCurrentTemperature(Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->mCurrentTemperature:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseSkipPolicySpecs"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 20
    const-string v0, "debug.camera.taps.skip.policy.mem_level"

    const/4 v1, -0x1

    .line 21
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->MEM_LEVEL:I

    .line 23
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackgroundShot2shotCount:I

    const-string v1, "debug.camera.taps.skip.policy.count"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_COUNT:I

    .line 25
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackgroundShot2shotExtraCount:I

    const-string v1, "debug.camera.taps.skip.policy.extra_count"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_EXTRA_COUNT:I

    .line 26
    invoke-static {}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->createLowMemMap()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    .line 27
    invoke-static {}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->createMaxCountPlatformArray()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

    .line 28
    invoke-static {}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->createExtraMaxCountPlatformArray()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->EXTRA_MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs$1;-><init>(Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->mThermalThrottleListener:Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 54
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 55
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundSkipPolicySpecs: BACKGROUND_SHOT_2_SHOT_COUNT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BACKGROUND_SHOT_2_SHOT_EXTRA_COUNT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_EXTRA_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static createExtraMaxCountPlatformArray()Landroid/util/SparseArray;
    .registers 4

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 147
    sget v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_EXTRA_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x68

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x69

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static createLowMemMap()Landroid/util/SparseArray;
    .registers 8

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 121
    sget-object v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createLowMemMap: MEM_LEVEL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->MEM_LEVEL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x9c4

    const/16 v2, 0x69

    const/16 v4, 0x5dc

    const/16 v5, 0x68

    const/16 v6, 0x4b0

    const/16 v7, 0x67

    if-lez v3, :cond_4d

    .line 123
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 127
    :cond_4d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static createMaxCountPlatformArray()Landroid/util/SparseArray;
    .registers 5

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 136
    sget v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->BACKGROUND_SHOT_2_SHOT_COUNT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x68

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x69

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x4

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected static isInvalidPlatform(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_e

    const/16 v0, 0x14

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static overlayLowMemSpec([I)V
    .registers 5

    .line 161
    sget v0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->MEM_LEVEL:I

    if-lez v0, :cond_5

    goto :goto_3b

    :cond_5
    if-eqz p0, :cond_3b

    .line 164
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    goto :goto_3b

    .line 167
    :cond_c
    :goto_c
    array-length v0, p0

    if-ge v1, v0, :cond_23

    add-int/lit8 v0, v1, -0x1

    .line 168
    aget v0, p0, v0

    .line 169
    aget v2, p0, v1

    if-ltz v2, :cond_20

    .line 171
    sget-object v3, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_20
    add-int/lit8 v1, v1, 0x2

    goto :goto_c

    .line 174
    :cond_23
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overlayLowMemSpec LOW_MEM_MAP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public getMaxCount(IZ)I
    .registers 9

    .line 60
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->getMaxCountByPlatform(Z)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    .line 64
    :cond_8
    sget-object v1, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxCount memIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentTemperature: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->mCurrentTemperature:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget v2, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->mCurrentTemperature:I

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->isTemperatureThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 66
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 68
    :cond_3b
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", availMem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v4, v5, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->isLimitMemThreshold(JI)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 p0, 0x2

    .line 71
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 72
    :cond_6b
    invoke-virtual {p0, v4, v5, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->isLowMemThreshold(JI)Z

    move-result p0

    if-eqz p0, :cond_7d

    const/4 p0, 0x1

    .line 73
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 75
    :cond_7d
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getMaxCountByPlatform(Z)Landroid/util/SparseArray;
    .registers 2

    if-eqz p1, :cond_5

    .line 81
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->EXTRA_MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

    return-object p0

    .line 83
    :cond_5
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->MAX_COUNT_PLATFORM:Landroid/util/SparseArray;

    return-object p0
.end method

.method protected isLimitMemThreshold(JI)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method protected isLowMemThreshold(JI)Z
    .registers 6

    .line 106
    sget-object p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_1a

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method protected isTemperatureThreshold(II)Z
    .registers 3

    const/16 p0, 0x32

    if-le p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
