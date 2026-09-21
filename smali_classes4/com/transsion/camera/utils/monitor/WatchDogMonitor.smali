.class public Lcom/transsion/camera/utils/monitor/WatchDogMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCloudSupported:Z

.field private mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

.field private final mSupportWatchDogMonitor:Z

.field private final mTimeoutMap:Ljava/util/Map;

.field private final mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

.field private mWatchdogData:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public static synthetic $r8$lambda$-V0GXgkte-O8A5gNt2mCCO74ED8(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;JJI)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->lambda$callTneAsync$0(Ljava/lang/String;JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearNumOfSceneId(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->clearNumOfSceneId()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WatchDogMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->INSTANCE:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    .line 55
    const-string v0, "ro.vendor.tran.freeze.detect.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    iput-boolean v1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mSupportWatchDogMonitor:Z

    .line 56
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    return-void
.end method

.method private adaptiveThreshold(J)J
    .registers 7

    .line 215
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-lez p0, :cond_11

    long-to-float p0, p1

    const p1, 0x3f4ccccd    # 0.8f

    :goto_e
    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0

    :cond_11
    long-to-float p0, p1

    const p1, 0x3f99999a    # 1.2f

    goto :goto_e
.end method

.method private callTneAsync(Ljava/lang/String;JI)V
    .registers 14

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    if-eqz v0, :cond_1f

    .line 140
    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->getMonitorEntry(Ljava/lang/String;)Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->getSceneThreshold()I

    move-result v0

    int-to-long v6, v0

    .line 141
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;JJI)V

    const-string p0, "TneThread"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private checkInterval(J)Z
    .registers 5

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p0, 0x493e0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private checkReachMaxNumOfSceneId(Ljava/lang/String;)Z
    .registers 2

    .line 195
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getNumOfSceneId(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xa

    if-lt p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private checkTimeout(JJI)Z
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    const/4 v2, 0x0

    if-lez p0, :cond_1c

    cmp-long p0, p3, v0

    if-lez p0, :cond_1c

    const/4 p0, 0x1

    if-eqz p5, :cond_17

    if-eq p5, p0, :cond_11

    goto :goto_1c

    :cond_11
    cmp-long p1, p1, p3

    if-gtz p1, :cond_16

    return p0

    :cond_16
    return v2

    :cond_17
    cmp-long p1, p1, p3

    if-lez p1, :cond_1c

    return p0

    :cond_1c
    :goto_1c
    return v2
.end method

.method private clearNumOfSceneId()V
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mWatchdogData:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    return-void
.end method

.method private execute(Ljava/lang/String;JJI)V
    .registers 14

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;

    if-nez v0, :cond_14

    .line 149
    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_14
    invoke-virtual {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->getPrevUploadRecord()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->checkInterval(J)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 154
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Execute frequently, ignore this time."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_26
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->checkReachMaxNumOfSceneId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 159
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Reach max number of sceneId, ignore this time."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_34
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->needAdaptiveThreshold(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->adaptiveThreshold(J)J

    move-result-wide p4

    :cond_3e
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 165
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->checkTimeout(JJI)Z

    move-result p0

    move-wide p4, v4

    if-eqz p0, :cond_8e

    .line 167
    iget-object p0, v1, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->getMonitorEntry(Ljava/lang/String;)Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->getSceneTag()Ljava/lang/String;

    move-result-object v2

    .line 169
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " timeout , attention please! Threshold is  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->setPrevUploadRecord(J)V

    const-wide/16 p2, 0x0

    .line 173
    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->updateBegin(J)V

    .line 175
    invoke-direct {v1, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getNumOfSceneId(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 177
    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->saveNumOfSceneId(Ljava/lang/String;I)V

    .line 185
    iget-object v1, v1, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, ""

    const-wide/16 v3, 0x22

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    :cond_8e
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;
    .registers 1

    .line 60
    sget-object v0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->INSTANCE:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    return-object v0
.end method

.method private getNumOfSceneId(Ljava/lang/String;)I
    .registers 3

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mWatchdogData:Lcom/tencent/mmkv/MMKV;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$callTneAsync$0(Ljava/lang/String;JJI)V
    .registers 7

    .line 141
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->execute(Ljava/lang/String;JJI)V

    return-void
.end method

.method private needAdaptiveThreshold(Ljava/lang/String;)Z
    .registers 2

    .line 224
    sget-object p0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->NEED_ADAPTIVE_THRESHOLD_SCENE:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private saveNumOfSceneId(Ljava/lang/String;I)V
    .registers 3

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mWatchdogData:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;)V
    .registers 5

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mSupportWatchDogMonitor:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mCloudSupported:Z

    if-nez v0, :cond_9

    goto :goto_40

    .line 85
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;

    if-nez v0, :cond_18

    .line 88
    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;-><init>()V

    .line 91
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->updateBegin(J)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter the scene of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_40
    :goto_40
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Don\'t support monitor or cloud engine,exit."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 130
    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mSupportWatchDogMonitor:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mCloudSupported:Z

    if-nez v0, :cond_9

    goto :goto_15

    .line 133
    :cond_9
    sget-object v0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Pause activity,remove all monitor entries."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_15
    :goto_15
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .registers 6

    .line 99
    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mSupportWatchDogMonitor:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mCloudSupported:Z

    if-nez v0, :cond_9

    goto :goto_47

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    if-eqz v0, :cond_46

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;

    if-eqz v0, :cond_46

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->updateEnd(J)V

    .line 110
    sget-object v1, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit the scene of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->getExpRecord()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->callTneAsync(Ljava/lang/String;JI)V

    const-wide/16 p0, 0x0

    .line 114
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->updateBegin(J)V

    :cond_46
    return-void

    .line 100
    :cond_47
    :goto_47
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Don\'t support monitor or cloud engine,exit."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .registers 9

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->getInstance()Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->init()V

    .line 65
    const-string p1, "watchdog"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mWatchdogData:Lcom/tencent/mmkv/MMKV;

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;

    const-string p1, "CheckNextTask"

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;-><init>(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;)V

    const-wide/32 v4, 0x36ee80

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->scheduleAtFixedRate(Lcom/transsion/camera/utils/threads/WorkTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 68
    sget-object p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Watchdog monitor initialize success."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public monitor(Ljava/lang/String;JI)V
    .registers 6

    .line 122
    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mSupportWatchDogMonitor:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mCloudSupported:Z

    if-nez v0, :cond_9

    goto :goto_c

    .line 125
    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->callTneAsync(Ljava/lang/String;JI)V

    :cond_c
    :goto_c
    return-void
.end method

.method public updateCloudSupport(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mCloudSupported:Z

    return-void
.end method

.method public updateMonitorType(Lcom/transsion/camera/utils/monitor/MonitorInfo;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    return-void
.end method
