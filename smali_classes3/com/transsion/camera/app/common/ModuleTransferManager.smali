.class public Lcom/transsion/camera/app/common/ModuleTransferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;,
        Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;,
        Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;


# instance fields
.field private isAllowedInvoke:Z

.field private isAnimatorRunning:Z

.field private final mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

.field public mCurrentCameraId:Ljava/lang/String;

.field private mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mCurrentModeName:Ljava/lang/String;

.field private mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDataStore:Ljava/lang/ref/WeakReference;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModuleTransfers:Ljava/util/List;

.field private mOnRegisterCompleteListenerList:Ljava/util/List;

.field private final mRingScreenLightOpentime:I

.field private mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$BdUo2cLGJe5Zh8bvMY5iutM-OEU(ZLcom/transsion/camera/app/common/IModuleTransfer;)V
    .registers 2

    .line 163
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IModuleTransfer;->onTransfer(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$niLotg95PXMD9f3CezHH4DZFQfI(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .registers 1

    .line 135
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;->onComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/common/ModuleTransferManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mDataStore:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModuleTransferManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;-><init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    const-string v0, "ASDModeEntry"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentModeName:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentCameraId:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAnimatorRunning:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mMainHandler:Landroid/os/Handler;

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRingScreenLightOpentime:I

    iput v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightOpentime:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    return-void
.end method

.method public static getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;
    .registers 1

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransferManager:Lcom/transsion/camera/app/common/ModuleTransferManager;

    return-object v0
.end method


# virtual methods
.method public getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCameraStateManager:Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    return-object p0
.end method

.method public getCurrentH()I
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getCurrentW()I
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getRingScreenLightState()Z
    .registers 2

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isFrontCamera(Ljava/lang/String;)Z
    .registers 2

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 100
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onComplete()V
    .registers 3

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 137
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw v0
.end method

.method public declared-synchronized onRingScreenLightChange(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 131
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized onRingScreenLightChange(ZZ)V
    .registers 9

    monitor-enter p0

    .line 141
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke transfer.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--->>>isAllowedInvoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--->>>mLightState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--->>>isLowLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--->>>mRingScreenLightOpentime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightOpentime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_89

    .line 148
    iget v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightOpentime:I

    if-lez v1, :cond_89

    iget-object v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mDataStore:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mDataStore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "ringscreenlightopening"

    const-string v3, "on"

    iget-object v4, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mDataStore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/app/common/ModuleTransferManager$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager$1;-><init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V

    iget v3, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mRingScreenLightOpentime:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_89

    :catchall_87
    move-exception p1

    goto :goto_ab

    .line 161
    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a9

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    if-eqz v1, :cond_a9

    xor-int/2addr p2, v0

    .line 162
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setScreenFlashMode(Z)V
    :try_end_a9
    .catchall {:try_start_1 .. :try_end_a9} :catchall_87

    .line 166
    :cond_a9
    monitor-exit p0

    return-void

    :goto_ab
    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_87

    throw p1
.end method

.method public declared-synchronized registerCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 119
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1

    .line 121
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V
    .registers 5

    monitor-enter p0

    .line 104
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register transfer listener.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_29

    .line 108
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_25

    throw p1
.end method

.method public declared-synchronized restart()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 177
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->isAllowedInvoke:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 178
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setCurrentH(I)V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setCurrentW(I)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mCurrentW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setDataStore(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mDataStore:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public declared-synchronized unregisterCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 125
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mOnRegisterCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1

    .line 127
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V
    .registers 5

    monitor-enter p0

    .line 111
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/ModuleTransferManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister transfer listener.--->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager;->mModuleTransfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_31

    .line 115
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2d

    throw p1
.end method
