.class public Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinuousShot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field final mCaptureSoundLock:Ljava/lang/Object;

.field mCaptureSoundResId:I

.field mCaptureSoundSampleId:I

.field mLatestBurstJpegData:[B

.field private final mMaxBurstNumber:I

.field mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile mShotDone:Z

.field private mShotStartTime:J

.field volatile mShotStarted:Z

.field mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

.field mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method public static synthetic $r8$lambda$pPtPjNhZ7tQwZCfLfyI7AVzF67I(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCJgfTeJtEbWV_KwjwlryE_ZsJ0(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lambda$onContinuousShotStop$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V
    .registers 7

    .line 2755
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2728
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ContinuousShot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 2736
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2737
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 2739
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 2741
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2742
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2745
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    if-gtz p3, :cond_3c

    const/16 p2, 0x14

    .line 2757
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    goto :goto_46

    .line 2759
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    .line 2762
    :goto_46
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    .line 2763
    iget-object p2, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 2765
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-direct {p2, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    .line 2766
    iget-object p0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x9

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method private aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 2810
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onContinuousShotStop$1()V
    .registers 4

    .line 3023
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 3024
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 2785
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2786
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 2787
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 2789
    :cond_d
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    .line 2791
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private lock3AForContinuousShot(Z)V
    .registers 2

    if-eqz p1, :cond_15

    .line 2815
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 2816
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2817
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void

    .line 2820
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2821
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    :cond_23
    return-void
.end method

.method private onContinuousShotDone()V
    .registers 5

    .line 3066
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3067
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setContinuousShotEnd(Z)V

    .line 3068
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    .line 3069
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 3070
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onContinuousShotDone()V

    .line 3071
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isCsViewAnimationStart()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isCsShotByPhysicalKey()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3072
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 3074
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x25

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private onContinuousShotStop()V
    .registers 6

    .line 3004
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotStop mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3007
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lock3AForContinuousShot(Z)V

    .line 3008
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setContinuousShotEnd(Z)V

    .line 3009
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotStop()V

    .line 3010
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmLiveShotStopped(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 3011
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fputmLiveShotStopped(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Z)V

    .line 3012
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmLivePhotoManager(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->start()V

    .line 3013
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_63

    .line 3014
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->playLivePhotoLottieAnimation()V

    .line 3017
    :cond_63
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_6e

    move v1, v2

    goto :goto_6f

    :cond_6e
    move v1, v0

    .line 3018
    :goto_6f
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_7f

    move v0, v2

    :cond_7f
    if-eqz v0, :cond_b1

    .line 3019
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmContinuousHideSaveAnimation(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3020
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateBurstCaptureThumbnail()V

    .line 3021
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isCsViewAnimationStart()Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isCsShotByPhysicalKey()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 3022
    :cond_a0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d0

    :cond_b1
    if-eqz v0, :cond_b7

    .line 3029
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    goto :goto_d0

    :cond_b7
    if-eqz v1, :cond_cd

    .line 3031
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_cd

    .line 3032
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateBurstCaptureThumbnail()V

    .line 3033
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    .line 3034
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    goto :goto_d0

    .line 3036
    :cond_cd
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    .line 3041
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    return-void
.end method

.method private saveJpegToFile([BI)V
    .registers 20

    move-object/from16 v0, p0

    .line 2964
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 2965
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 2966
    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v10, p2

    .line 2965
    invoke-virtual/range {v3 .. v10}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object v11

    .line 2967
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v10, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    new-instance v15, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;

    invoke-direct {v15, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    const/16 v16, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method private updateBurstCaptureThumbnail()V
    .registers 4

    .line 3045
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    if-eqz v0, :cond_15

    .line 3046
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 3047
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V

    .line 3048
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    return-void

    .line 3050
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLatestBurstJpegData is null in onContinuousShotStop."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateUIStateSaving()V
    .registers 4

    .line 3055
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 3056
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "update UI to idle state if not resumed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3057
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 3061
    :cond_19
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x3

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isShotting()Z
    .registers 4

    monitor-enter p0

    .line 2935
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShotting mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2936
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onContinuousShotFailed()V
    .registers 4

    monitor-enter p0

    .line 2848
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotFailed mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2850
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_34

    .line 2851
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone onContinuousShotFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 2852
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    goto :goto_49

    .line 2854
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2855
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 2856
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_32

    .line 2858
    :cond_47
    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_32

    throw v0
.end method

.method public declared-synchronized onContinuousShotProgress([B)V
    .registers 8

    monitor-enter p0

    .line 2866
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2869
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_49

    .line 2870
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mShotDone onContinuousShotProgress"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 2871
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    goto/16 :goto_d2

    .line 2873
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2874
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "continuous shot has been stopped"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_46

    .line 2875
    monitor-exit p0

    return-void

    .line 2878
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_79

    .line 2879
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2880
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_77
    .catchall {:try_start_5c .. :try_end_77} :catchall_46

    .line 2881
    monitor-exit p0

    return-void

    .line 2884
    :cond_79
    :try_start_79
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v1, v0, :cond_8b

    .line 2886
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 2888
    :cond_8b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-interface {v2, v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotProgress(II)V

    .line 2890
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContinuousShotProgress mBurstProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSaveProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2893
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    if-ne v2, v0, :cond_cb

    .line 2894
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2895
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_c8

    .line 2896
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 2898
    :cond_c8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V

    .line 2901
    :cond_cb
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    .line 2902
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->saveJpegToFile([BI)V
    :try_end_d0
    .catchall {:try_start_79 .. :try_end_d0} :catchall_46

    .line 2903
    monitor-exit p0

    return-void

    :goto_d2
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_46

    throw p1
.end method

.method protected declared-synchronized onFileSavedImpl(Landroid/net/Uri;)V
    .registers 5

    monitor-enter p0

    .line 2977
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2979
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSavedImpl mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2983
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_54

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_88

    goto :goto_54

    :catchall_52
    move-exception p1

    goto :goto_9a

    :cond_54
    :goto_54
    if-eqz p1, :cond_65

    .line 2985
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 2986
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V

    .line 2988
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmContinuousHideSaveAnimation(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 2989
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateBurstCaptureThumbnail()V

    .line 2992
    :cond_70
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBurstProgress(I)V

    .line 2993
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 2994
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    goto :goto_98

    :cond_88
    if-eqz p1, :cond_98

    .line 2997
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 2998
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateBurstBrowserData(Landroid/net/Uri;Z)V
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_52

    .line 3001
    :cond_98
    :goto_98
    monitor-exit p0

    return-void

    :goto_9a
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_52

    throw p1
.end method

.method public onPreviewStarted()V
    .registers 4

    .line 2779
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    if-eqz v0, :cond_5

    goto :goto_13

    .line 2783
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_13

    .line 2784
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    new-instance v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public release()V
    .registers 4

    .line 2954
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2955
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_12

    .line 2956
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    const/4 v1, 0x0

    .line 2957
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_1d

    .line 2959
    :cond_12
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    .line 2960
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void

    .line 2959
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_10

    throw p0
.end method

.method resetState()V
    .registers 3

    .line 2770
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2771
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2772
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 2773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2774
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startContinuousShot()V
    .registers 4

    .line 2798
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2799
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2800
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    const/4 v0, 0x0

    .line 2801
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    const/4 v0, 0x1

    .line 2802
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 2803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    .line 2804
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onContinuousShotStart()V

    .line 2805
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lock3AForContinuousShot(Z)V

    .line 2806
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startContinuousShot(I)V

    return-void
.end method

.method public declared-synchronized startContinuousShutter()V
    .registers 4

    monitor-enter p0

    .line 2907
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startContinuousShutter mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShutterState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2908
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2907
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2910
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    if-nez v0, :cond_4c

    .line 2911
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing is continuous shot not start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 2912
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v0

    goto :goto_9d

    .line 2914
    :cond_4c
    :try_start_4c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_5b

    .line 2915
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone startContinuousShutter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_4a

    .line 2916
    monitor-exit p0

    return-void

    .line 2919
    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2920
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotStopped startContinuousShutter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_4a

    .line 2921
    monitor-exit p0

    return-void

    .line 2924
    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2925
    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2926
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if shutter is not on"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6e .. :try_end_89} :catchall_4a

    .line 2927
    monitor-exit p0

    return-void

    .line 2929
    :cond_8b
    :try_start_8b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 2930
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(IZ)V
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_4a

    .line 2932
    :cond_9b
    monitor-exit p0

    return-void

    :goto_9d
    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_4a

    throw v0
.end method

.method public declared-synchronized stopContinuousShot()V
    .registers 5

    monitor-enter p0

    .line 2828
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopContinuousShot mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2831
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_34

    .line 2832
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mShotDone stopContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 2833
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    goto :goto_66

    .line 2835
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->-$$Nest$fgetmContinuousHideSaveAnimation(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    .line 2836
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateBurstCaptureThumbnail()V

    .line 2837
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x25

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2838
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 2840
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_64

    .line 2841
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 2842
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_64
    .catchall {:try_start_34 .. :try_end_64} :catchall_32

    .line 2844
    :cond_64
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_32

    throw v0
.end method

.method public declared-synchronized terminateContinuousShot()V
    .registers 4

    monitor-enter p0

    .line 2941
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateContinuousShot mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2944
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_34

    .line 2945
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if continuous shot is done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 2946
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    goto :goto_39

    .line 2949
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->stopContinuousShot()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_32

    .line 2950
    monitor-exit p0

    return-void

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_32

    throw v0
.end method
