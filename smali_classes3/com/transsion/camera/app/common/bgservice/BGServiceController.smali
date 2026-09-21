.class public Lcom/transsion/camera/app/common/bgservice/BGServiceController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;,
        Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# instance fields
.field private final mActivityResume:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mBgCaptureSurfaceList:Ljava/util/List;

.field private mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

.field private final mEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHandler:Landroid/os/Handler;

.field private mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

.field public final mOfflineLock:Lcom/transsion/camera/utils/StateWait;

.field private final mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnNextReadyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSwitchingOffline:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$5_wpxMmLp9q4xj36bQUX8f6ppLo(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBgCaptureSurfaceList(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSurface(Lcom/transsion/camera/app/common/bgservice/BGServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BGServiceController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mSwitchingOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOnNextReadyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mActivityResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    new-instance v0, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v0}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineLock:Lcom/transsion/camera/utils/StateWait;

    .line 62
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BGServiceController:  processName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_8b

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 65
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V

    .line 71
    const-string v1, "com.transsion.camera.feature.bgservice.BGServiceProxy"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/bgservice/IBGService;

    iput-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    .line 74
    :cond_8b
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz v0, :cond_98

    invoke-interface {v0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->hasBGService()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGServiceCallback()V

    .line 78
    :cond_98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BGCaptureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    new-instance v1, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$BGHandler;-><init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static createInstance()V
    .registers 1

    .line 56
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    :cond_b
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;
    .registers 1

    .line 105
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->sInstance:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    return-object v0
.end method

.method private getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 210
    sget-object v2, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSurface , surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,surfaceId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v2

    if-ne p1, v2, :cond_9

    .line 212
    monitor-exit v0

    return-object v1

    :catchall_47
    move-exception p0

    goto :goto_4c

    .line 215
    :cond_49
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_47

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz v0, :cond_e

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onReCreatedSuccess"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGServiceCallback()V

    :cond_e
    return-void
.end method

.method private setBGServiceCallback()V
    .registers 2

    .line 84
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;-><init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->setBGServiceCallback(Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;)V

    return-void
.end method


# virtual methods
.method public addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 13

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 135
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPreReleaseTime()J

    move-result-wide v5

    .line 136
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    if-eqz v7, :cond_29

    const-wide/32 v7, 0x493e0

    goto :goto_2b

    :cond_29
    const-wide/16 v7, 0x4e20

    :goto_2b
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-eqz v9, :cond_d

    sub-long v9, v1, v5

    cmp-long v7, v9, v7

    if-lez v7, :cond_d

    .line 138
    sget-object v7, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeCaptureSurface, currentTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", preReleaseTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", surface: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 141
    iget-object v5, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :catchall_6b
    move-exception p0

    goto :goto_74

    .line 144
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v0

    return-void

    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_6b

    throw p0
.end method

.method public countOfflineSession(Z)V
    .registers 5

    if-eqz p1, :cond_8

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_15

    .line 294
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_15

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 298
    :cond_15
    :goto_15
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOfflineSessionCount, mOfflineSessionCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , isAdd:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .registers 7

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMediaNumber()I

    move-result v0

    .line 161
    sget-object v1, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnBGImageSaved processingNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_23

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    if-eqz p0, :cond_23

    .line 164
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    :cond_23
    return-void
.end method

.method public getActivityResume()Z
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mActivityResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getBGImageSavedListener()Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getOfflineSessionCount()I
    .registers 4

    .line 286
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOfflineSessionCount, mOfflineSessionCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getOnNextReadyFlag()Z
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOnNextReadyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isBGServiceSupport()Z
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->hasBGService()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 126
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isBGServiceSupport()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isEnable()Z
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isOffLineSessionSupport()Z
    .registers 2

    .line 267
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    const-string v0, "0"

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isOffLineSessionSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isIcapDumpSupport()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineJniSupport()Z
    .registers 2

    .line 272
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    const-string v0, "0"

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isOfflineJniSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSwitchingOffline()Z
    .registers 4

    .line 276
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchingOffline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mSwitchingOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mSwitchingOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public notifyOfflineReady()V
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz p0, :cond_7

    .line 116
    invoke-interface {p0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->pause()V

    :cond_7
    return-void
.end method

.method public removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 5

    .line 149
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCaptureSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 151
    :try_start_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public resetOfflineState()V
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mBgService:Lcom/transsion/camera/app/common/bgservice/IBGService;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0}, Lcom/transsion/camera/app/common/bgservice/IBGService;->resume()V

    :cond_7
    return-void
.end method

.method public setActivityResume(Z)V
    .registers 5

    .line 262
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mActivityResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mImageSavedListener:Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    sget-object p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setOnNextReadyFlag(Z)V
    .registers 5

    .line 306
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnNextReadyFlag, onNextReadyFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOnNextReadyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setSwitchingOffline(Z)V
    .registers 5

    .line 281
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchingOffline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mSwitchingOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public waitOfflineReady()V
    .registers 1

    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->mOfflineLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
