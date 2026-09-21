.class Lcom/ss/android/medialib/camera/IESCameraManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/CameraOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/IESCameraManager;->changeCamera(Landroid/content/Context;ILcom/ss/android/medialib/camera/CameraOpenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

.field final synthetic val$cameraListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/IESCameraManager;JLandroid/content/Context;Lcom/ss/android/medialib/camera/CameraOpenListener;)V
    .registers 6

    .line 291
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    iput-wide p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$time:J

    iput-object p4, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$cameraListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenFail(IILjava/lang/String;)V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$cameraListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    if-eqz v0, :cond_7

    .line 318
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    const/4 p2, 0x0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z
    invoke-static {p1, p2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1402(Lcom/ss/android/medialib/camera/IESCameraManager;Z)Z

    .line 321
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mLastChangeCameraDoneTime:J
    invoke-static {p0, p1, p2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    return-void
.end method

.method public onOpenSuccess(I)V
    .registers 7

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$time:J

    sub-long/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v3, v0

    .line 296
    const-string v4, "iesve_record_switch_camera_time"

    invoke-static {v4, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfRational(Ljava/lang/String;FF)V

    .line 297
    const-string v2, "te_record_switch_camera_time"

    const/4 v3, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 298
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->start(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 301
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->startPreview()V

    .line 304
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyEnabled:Z
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1200(Lcom/ss/android/medialib/camera/IESCameraManager;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 305
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyEnabled:Z
    invoke-static {v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1200(Lcom/ss/android/medialib/camera/IESCameraManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyLevel:I
    invoke-static {v2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1300(Lcom/ss/android/medialib/camera/IESCameraManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->setBodyBeauty(ZI)V

    .line 308
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->val$cameraListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    if-eqz v0, :cond_51

    .line 309
    invoke-interface {v0, p1}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    .line 311
    :cond_51
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z
    invoke-static {p1, v3}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1402(Lcom/ss/android/medialib/camera/IESCameraManager;Z)Z

    .line 312
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$2;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mLastChangeCameraDoneTime:J
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    return-void
.end method
