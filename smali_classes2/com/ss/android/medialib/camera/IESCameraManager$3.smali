.class Lcom/ss/android/medialib/camera/IESCameraManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/CameraOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/IESCameraManager;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/IESCameraManager;I)V
    .registers 3

    .line 493
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    iput p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenFail(IILjava/lang/String;)V
    .registers 7

    .line 507
    const-string v0, "IESCameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed, errorCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_99

    .line 508
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->enableFallBack:Z

    if-eqz v0, :cond_99

    .line 509
    const-string p1, "IESCameraManager"

    const-string p2, "Switch to camera1 api!"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1800(Lcom/ss/android/medialib/camera/IESCameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_41
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 512
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->close()V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_97

    .line 514
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    .line 515
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    new-instance p2, Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p2}, Lcom/ss/android/medialib/camera/Camera1;-><init>()V

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1, p2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1002(Lcom/ss/android/medialib/camera/IESCameraManager;Lcom/ss/android/medialib/camera/IESCameraInterface;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    .line 516
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ss/android/medialib/camera/IESCameraInterface;->init(Lcom/ss/android/medialib/camera/CameraParams;)V

    .line 517
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1900(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V

    .line 518
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->val$position:I

    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->myListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    invoke-interface {p1, p2, p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    .line 519
    monitor-exit v0

    return-void

    :goto_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_41 .. :try_end_98} :catchall_53

    throw p0

    .line 520
    :cond_99
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1700(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 521
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1700(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    :cond_aa
    return-void
.end method

.method public onOpenSuccess(I)V
    .registers 5

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " succeed, thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IESCameraManager"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # invokes: Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraProvider()V
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1600(Lcom/ss/android/medialib/camera/IESCameraManager;)V

    .line 498
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1700(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 499
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$3;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1700(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    return-void

    .line 501
    :cond_3d
    const-string p0, "mClientListener is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
