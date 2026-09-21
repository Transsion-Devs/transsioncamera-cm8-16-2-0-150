.class Lcom/ss/android/medialib/camera/IESCameraManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/IESCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/IESCameraManager;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/IESCameraManager;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate()V
    .registers 3

    .line 91
    const-string v0, "onOpenGLCreate..."

    const-string v1, "IESCameraManager"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/presenter/IMediaPresenter;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_4c

    .line 97
    :cond_18
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLCreate()V

    .line 99
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    new-instance v1, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;-><init>(Lcom/ss/android/medialib/camera/IESCameraManager$1;)V

    invoke-interface {v0, v1}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->setOnFrameAvailableListener(Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;)V

    .line 121
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->startPreview()V

    .line 122
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I
    invoke-static {v0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$302(Lcom/ss/android/medialib/camera/IESCameraManager;I)I

    .line 123
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    move-result-wide v0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$402(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    return-void

    .line 93
    :cond_4c
    :goto_4c
    const-string p0, "presenter or camera provider is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOpenGLDestroy()V
    .registers 3

    .line 128
    const-string v0, "IESCameraManager"

    const-string v1, "onOpenGLDestroy..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 130
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLDestroy()V

    :cond_18
    return-void
.end method

.method public onOpenGLRunning()I
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mUpdateCameraRotation:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$700(Lcom/ss/android/medialib/camera/IESCameraManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 137
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;

    move-result-object v2

    iget-object v2, v2, Lcom/ss/android/medialib/camera/CameraParams;->mContext:Landroid/content/Context;

    # invokes: Lcom/ss/android/medialib/camera/IESCameraManager;->setCameraDisplayOrientation(Landroid/content/Context;)V
    invoke-static {v0, v2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$900(Lcom/ss/android/medialib/camera/IESCameraManager;Landroid/content/Context;)V

    .line 139
    :cond_22
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLRunning()I

    move-result v0

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    if-gez v0, :cond_39

    return v0

    .line 143
    :cond_39
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 p0, -0x3

    return p0

    .line 147
    :cond_4f
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mIsPreventRender:Z
    invoke-static {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$1100(Lcom/ss/android/medialib/camera/IESCameraManager;)Z

    move-result p0

    if-eqz p0, :cond_59

    const/4 p0, -0x4

    return p0

    :cond_59
    return v1
.end method
