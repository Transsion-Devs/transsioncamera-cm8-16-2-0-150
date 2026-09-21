.class public Lcom/transsion/camera/app/common/mode/CameraSettingControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModeFeatureHandler:Landroid/os/Handler;

.field private mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

.field private mModeFeatureThread:Landroid/os/HandlerThread;

.field private mSettingLock:Ljava/lang/Object;

.field private mSettingUIHandler:Landroid/os/Handler;

.field private mSettingUIHandlerThread:Landroid/os/HandlerThread;

.field private mSettingUILock:Ljava/lang/Object;

.field private mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mSettingUIResId:I


# direct methods
.method public static synthetic $r8$lambda$Rqd9nzZI7-W2b1HbRWyHoWy82N8(Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->lambda$loadModeFeature$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$v-ZFJ9fsO9FrWH1bgpkKWNRihR4(Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->lambda$loadSettingsUIEntry$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraSettingControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUILock:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->init()V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->initSettingHandler()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIResId:I

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->loadModeFeature()V

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->loadSettingsUIEntry()V

    return-void
.end method

.method private synthetic lambda$loadModeFeature$0()V
    .registers 6

    const/16 v0, -0x14

    .line 58
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_c
    new-instance v3, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    .line 62
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_37

    .line 63
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadModeFeature cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_37
    move-exception p0

    .line 62
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method private synthetic lambda$loadSettingsUIEntry$1()V
    .registers 7

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUILock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_7
    new-instance v3, Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIResId:I

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 84
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->resetSettingUIEntries()V

    .line 85
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_37

    .line 86
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init all UI Provider. cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_37
    move-exception p0

    .line 85
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method private loadModeFeature()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraSettingControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadSettingsUIEntry()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraSettingControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CameraSettingControl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CameraSettingControl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 109
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_e

    .line 110
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_e
    return-void
.end method

.method public getModeFeatureProvider()Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;
    .registers 4

    .line 68
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Get mode feature provider."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    if-nez v0, :cond_22

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    if-nez v1, :cond_1e

    .line 72
    new-instance v1, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 74
    :cond_1e
    :goto_1e
    monitor-exit v0

    goto :goto_22

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1c

    throw p0

    .line 76
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureProvider:Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;

    return-object p0
.end method

.method public getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
    .registers 5

    .line 91
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Get setting ui provider."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-nez v0, :cond_27

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUILock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-nez v1, :cond_23

    .line 95
    new-instance v1, Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIResId:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 96
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->resetSettingUIEntries()V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 98
    :cond_23
    :goto_23
    monitor-exit v0

    goto :goto_27

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_21

    throw p0

    .line 100
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SettingUIControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIHandlerThread:Landroid/os/HandlerThread;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mSettingUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public initSettingHandler()V
    .registers 3

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModeFeatureControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraSettingControl;->mModeFeatureHandler:Landroid/os/Handler;

    return-void
.end method
