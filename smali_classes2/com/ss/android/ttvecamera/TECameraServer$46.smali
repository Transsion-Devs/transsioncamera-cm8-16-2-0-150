.class Lcom/ss/android/ttvecamera/TECameraServer$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 2296
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(ILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V
    .registers 5

    .line 2458
    const-string p1, "TECameraServer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraClosed, CameraState = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    if-ne p2, p1, :cond_3f

    .line 2460
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2461
    :try_start_2b
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2462
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c

    .line 2463
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onCaptureStopped(I)V

    return-void

    :catchall_3c
    move-exception p0

    .line 2462
    :try_start_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    return-void
.end method

.method public onCameraError(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 2448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCameraError: code = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", msg = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "TECameraServer"

    invoke-static {p4, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Open camera failed @"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2450
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",face:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2451
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2452
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2449
    invoke-interface {p1, p2, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 2469
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraInfo: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ext: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "TECameraServer"

    invoke-static {v0, p4}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x6c

    if-ne p1, p4, :cond_31

    .line 2471
    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    goto :goto_3b

    :cond_31
    const/16 p4, 0x6d

    if-ne p1, p4, :cond_3b

    .line 2473
    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2475
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onInfo(IILjava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V
    .registers 12

    .line 2299
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TECameraServer-onCameraOpened: cameraType "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", ret "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 2300
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1700(Lcom/ss/android/ttvecamera/TECameraServer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J
    invoke-static {p3, v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1602(Lcom/ss/android/ttvecamera/TECameraServer;J)J

    .line 2301
    const-string p3, "TECameraServer"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraOpened: CameraType = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Ret = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",retryCnt = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CamType"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ret"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OpenTime"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1600(Lcom/ss/android/ttvecamera/TECameraServer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-nez p2, :cond_1a8

    .line 2306
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2307
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2308
    :try_start_f0
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v1

    if-ne v1, p4, :cond_188

    .line 2309
    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p4, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2314
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_f0 .. :try_end_fe} :catchall_186

    .line 2316
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onCaptureStarted(II)V

    .line 2317
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p3

    sub-int/2addr p1, p3

    .line 2318
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retry open camera times = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x78

    invoke-interface {p3, v0, p1, p4}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onInfo(IILjava/lang/String;)V

    .line 2319
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string p3, "ResultType"

    const-string p4, "Open Success"

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    const-string p1, "te_record_camera_open_ret"

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2321
    const-string p1, "te_record_camera_open_cost"

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1600(Lcom/ss/android/ttvecamera/TECameraServer;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2322
    const-string p1, "te_record_camera_open_info"

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string p1, "VESDKCOST"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TE_RECORD_CAMERA_OPEN_COST "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1600(Lcom/ss/android/ttvecamera/TECameraServer;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_58f

    :catchall_186
    move-exception p0

    goto :goto_1a6

    .line 2311
    :cond_188
    :try_start_188
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Open camera error ? May be closed now!!, state = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    monitor-exit v0

    return-void

    .line 2314
    :goto_1a6
    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_188 .. :try_end_1a7} :catchall_186

    throw p0

    .line 2325
    :cond_1a8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v1, 0xb

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_26f

    const/16 v0, -0x1ac

    if-ne p2, v0, :cond_26f

    .line 2328
    const-string p1, "TECameraServer"

    const-string p2, "CameraUnit auth failed, fall back to camera2"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2330
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2332
    :try_start_1d4
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p1

    if-nez p1, :cond_200

    .line 2333
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCameraOpened, no need to close camera, state: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    goto :goto_226

    :catchall_1fe
    move-exception p0

    goto :goto_26d

    .line 2336
    :cond_200
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2337
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    if-eqz p1, :cond_221

    .line 2338
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 2339
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    .line 2341
    :cond_221
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2343
    :goto_226
    monitor-exit v0
    :try_end_227
    .catchall {:try_start_1d4 .. :try_end_227} :catchall_1fe

    .line 2344
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iput p3, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 2345
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2100(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p3

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p4

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$000(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 2346
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string p2, "ResultType"

    const-string p3, "fallback to Camera2"

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const-string p1, "te_record_camera_open_info"

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_58f

    .line 2343
    :goto_26d
    :try_start_26d
    monitor-exit v0
    :try_end_26e
    .catchall {:try_start_26d .. :try_end_26e} :catchall_1fe

    throw p0

    :cond_26f
    const/16 v0, -0x198

    const/16 v1, -0x193

    const/4 v5, -0x1

    if-eq p2, v1, :cond_443

    if-eq p2, v0, :cond_443

    .line 2349
    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2351
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v6

    if-lez v6, :cond_443

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->isCameraPermitted()Z
    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2200(Lcom/ss/android/ttvecamera/TECameraServer;)Z

    move-result v6

    if-eqz v6, :cond_443

    .line 2352
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry to Open Camera Failed @"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2353
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v6

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",face:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2354
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v6

    iget v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2355
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, -0x194

    .line 2352
    invoke-interface {v0, v6, v1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 2356
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1100(Lcom/ss/android/ttvecamera/TECameraServer;)Z

    move-result v0

    if-eqz v0, :cond_31b

    .line 2357
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z
    invoke-static {p1, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1102(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 2358
    const-string p1, "TECameraServer"

    const-string p2, "retry to open camera, but camera close was called"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2360
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResultType"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "retry to open camera"

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    const-string p1, "te_record_camera_open_info"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2364
    :cond_31b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_347

    .line 2365
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2366
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "abort retry to open camera, no context: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_347
    if-ne p1, p3, :cond_372

    .line 2370
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p1

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p3

    iget p3, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    if-ne p1, p3, :cond_372

    if-eq p2, v2, :cond_360

    const/4 p1, 0x5

    if-eq p2, p1, :cond_360

    if-ne p2, p4, :cond_372

    .line 2374
    :cond_360
    const-string p1, "TECameraServer"

    const-string p2, "camera2 is not available"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    :cond_372
    const-wide/16 p1, 0x1e

    .line 2380
    :try_start_374
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_377
    .catch Ljava/lang/InterruptedException; {:try_start_374 .. :try_end_377} :catch_378

    goto :goto_37c

    :catch_378
    move-exception p1

    .line 2382
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2384
    :goto_37c
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "retry to open camera, mRetryCnt = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 2387
    :try_start_39f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p1

    if-nez p1, :cond_3cb

    .line 2388
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCameraOpened, no need to close camera, state: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    goto :goto_3f1

    :catchall_3c9
    move-exception p0

    goto :goto_441

    .line 2391
    :cond_3cb
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2392
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    if-eqz p1, :cond_3ec

    .line 2393
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 2394
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    .line 2396
    :cond_3ec
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2398
    :goto_3f1
    monitor-exit p3
    :try_end_3f2
    .catchall {:try_start_39f .. :try_end_3f2} :catchall_3c9

    .line 2399
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # operator-- for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1810(Lcom/ss/android/ttvecamera/TECameraServer;)I

    .line 2400
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2100(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p3

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p4

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$000(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 2401
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResultType"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "retry to open camera"

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    const-string p1, "te_record_camera_open_info"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58f

    .line 2398
    :goto_441
    :try_start_441
    monitor-exit p3
    :try_end_442
    .catchall {:try_start_441 .. :try_end_442} :catchall_3c9

    throw p0

    .line 2403
    :cond_443
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p3

    iget-boolean p3, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    if-eqz p3, :cond_451

    if-eq p1, p4, :cond_451

    if-ne p2, v0, :cond_453

    :cond_451
    if-ne p2, v1, :cond_50b

    .line 2406
    :cond_453
    const-string p1, "TECameraServer"

    const-string p2, "Open camera failed, fall back to camera1"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2408
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 2410
    :try_start_46c
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p1

    if-nez p1, :cond_498

    .line 2411
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraOpened, no need to close camera, state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    goto :goto_4be

    :catchall_496
    move-exception p0

    goto :goto_509

    .line 2414
    :cond_498
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2415
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    if-eqz p1, :cond_4b9

    .line 2416
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 2417
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;

    .line 2419
    :cond_4b9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {p1, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2421
    :goto_4be
    monitor-exit p3
    :try_end_4bf
    .catchall {:try_start_46c .. :try_end_4bf} :catchall_496

    .line 2422
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iput p4, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 2423
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1500(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    move-result-object p1

    const/16 p2, 0x33

    const-string p3, "need recreate surfacetexture"

    invoke-interface {p1, p2, v3, p3, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2424
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2100(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p3

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p4

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$000(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 2425
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string p2, "ResultType"

    const-string p3, "fallback to Camera1"

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    const-string p1, "te_record_camera_open_info"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58f

    .line 2421
    :goto_509
    :try_start_509
    monitor-exit p3
    :try_end_50a
    .catchall {:try_start_509 .. :try_end_50a} :catchall_496

    throw p0

    .line 2428
    :cond_50b
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onCaptureStarted(II)V

    .line 2429
    const-string p1, "TECameraServer"

    const-string p3, "finally go to the error."

    invoke-static {p1, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string p1, "te_record_camera_open_ret"

    int-to-long p3, p2

    invoke-static {p1, p3, p4}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2431
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Open camera failed @"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2432
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p4

    iget p4, p4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",face:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2433
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p4

    iget p4, p4, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 2434
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p4

    iget-object p4, p4, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {p4}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2431
    invoke-interface {p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 2436
    sget-object p1, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object p2

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->close(Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2300(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/bytedance/bpea/basics/Cert;)I

    .line 2437
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I

    .line 2438
    const-string p1, "te_record_camera_open_info"

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2442
    :goto_58f
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 2514
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    if-eqz v0, :cond_26

    const/16 v0, -0x1b5

    if-ne p2, v0, :cond_26

    .line 2515
    const-string p1, "te_record_camera_preview_ret"

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2516
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2500(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 2518
    :cond_1d
    new-instance p2, Lcom/ss/android/ttvecamera/TECameraServer$46$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttvecamera/TECameraServer$46$1;-><init>(Lcom/ss/android/ttvecamera/TECameraServer$46;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2526
    :cond_26
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2528
    :try_start_2d
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getRetryStartPreviewCount()I

    move-result v1

    if-lez v1, :cond_8c

    .line 2529
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 p2, 0x1

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStartPreviewError:Z
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2402(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 2530
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Retry to startPreview. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/ttvecamera/TECameraBase;->getRetryStartPreviewCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times is waiting to retry."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->retryStartPreviewOnce()V

    .line 2532
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2500(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_81

    .line 2533
    monitor-exit v0

    return-void

    :catchall_7f
    move-exception p0

    goto :goto_97

    .line 2534
    :cond_81
    new-instance p2, Lcom/ss/android/ttvecamera/TECameraServer$46$2;

    invoke-direct {p2, p0}, Lcom/ss/android/ttvecamera/TECameraServer$46$2;-><init>(Lcom/ss/android/ttvecamera/TECameraServer$46;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_95

    .line 2542
    :cond_8c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttvecamera/TECameraServer$46;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2543
    const-string p0, "te_record_camera_preview_ret"

    int-to-long p1, p2

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2545
    :goto_95
    monitor-exit v0

    return-void

    :goto_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_2d .. :try_end_98} :catchall_7f

    throw p0
.end method

.method public onPreviewStopped(IIILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 2497
    const-string p1, "TECameraServer"

    const-string v0, "stopCapture success!"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/ss/android/ttvecamera/TECameraServer$46;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPreviewSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 2481
    const-string p1, "TECameraServer"

    const-string v0, "startCapture success!"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStartPreviewError:Z
    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2402(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 2483
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 2484
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/ttvecamera/TECameraBase;->getRetryStartPreviewCount()I

    move-result p3

    sub-int/2addr p1, p3

    .line 2485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", Retry preview times = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3, p5}, Lcom/ss/android/ttvecamera/TECameraServer$46;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2486
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->collectCameraCapabilities()V

    goto :goto_54

    .line 2488
    :cond_51
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/ss/android/ttvecamera/TECameraServer$46;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2491
    :goto_54
    const-string p0, "te_record_camera_preview_ret"

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 2508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onTorchError "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_12

    const-string p1, " close"

    goto :goto_14

    :cond_12
    const-string p1, " open"

    :goto_14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 2503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onTorchSuccess "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_12

    const-string p1, " close"

    goto :goto_14

    :cond_12
    const-string p1, " open"

    :goto_14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
