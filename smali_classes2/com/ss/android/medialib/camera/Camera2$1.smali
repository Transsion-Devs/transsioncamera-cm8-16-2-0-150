.class Lcom/ss/android/medialib/camera/Camera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StateCallback::onDisconnected: thread_name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera2;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StateCallback::onError: thread_name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v0, 0x4

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I
    invoke-static {p1, v0}, Lcom/ss/android/medialib/camera/Camera2;->access$002(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 168
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 169
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->getCameraErrorCode(I)I
    invoke-static {v0, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$400(Lcom/ss/android/medialib/camera/Camera2;I)I

    move-result p2

    const-string v0, "StateCallback::onError"

    const/4 v1, 0x2

    invoke-interface {p1, v1, p2, v0}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 p2, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p1, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$202(Lcom/ss/android/medialib/camera/Camera2;Lcom/ss/android/medialib/camera/CameraOpenListener;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    .line 173
    :cond_4c
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->reset()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$500(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCallback::onOpened: thread_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v2, 0x2

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mSessionState:I
    invoke-static {v0, v2}, Lcom/ss/android/medialib/camera/Camera2;->access$002(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 148
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/ss/android/medialib/camera/Camera2;->access$102(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 149
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 150
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenSuccess(I)V

    goto :goto_40

    .line 152
    :cond_3b
    const-string p1, "mCameraOpenListener is null!"

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$1;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 p1, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mIsFirstOpenCamera:Z
    invoke-static {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->access$302(Lcom/ss/android/medialib/camera/Camera2;Z)Z

    return-void
.end method
