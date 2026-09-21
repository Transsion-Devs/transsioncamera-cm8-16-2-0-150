.class public Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStateCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cameraWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/ttvecamera/TECamera2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECamera2;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->cameraWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 139
    const-string p1, "StateCallback::onDisconnected..."

    const-string v0, "TECamera2"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->cameraWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ttvecamera/TECamera2;

    const/4 v1, 0x0

    if-nez p1, :cond_13

    return v1

    .line 145
    :cond_13
    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    if-eqz v2, :cond_23

    .line 146
    const-string p0, "StateCallback::onDisconnected...ignore reset..."

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    return v1

    .line 151
    :cond_23
    new-instance v0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$2;-><init>(Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;Lcom/ss/android/ttvecamera/TECamera2;)V

    .line 161
    iget-object p0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz p0, :cond_34

    .line 162
    iget-object p0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 164
    :cond_34
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public onError(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->cameraWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/ss/android/ttvecamera/TECamera2;

    .line 172
    const-string p1, "TECamera2"

    if-nez v2, :cond_14

    .line 173
    const-string p0, "onError...no camera holder"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_14
    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECamera2;->getSessionState()I

    move-result v3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCallback::onError..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", session code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-static {p1, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$3;-><init>(Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;Lcom/ss/android/ttvecamera/TECamera2;IILjava/lang/String;)V

    .line 196
    iget-object p0, v2, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz p0, :cond_47

    .line 197
    iget-object p0, v2, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 199
    :cond_47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_4a
    const/4 p0, 0x4

    .line 202
    invoke-virtual {v2, p0}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOpened(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 108
    const-string p1, "TECamera2"

    const-string v0, "StateCallback::onOpened..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;->cameraWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ttvecamera/TECamera2;

    const/4 v0, 0x0

    if-nez p1, :cond_13

    return v0

    .line 114
    :cond_13
    iget-object v1, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-boolean v0, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    const/4 v1, 0x2

    .line 115
    invoke-virtual {p1, v1}, Lcom/ss/android/ttvecamera/TECamera2;->updateSessionState(I)V

    .line 116
    new-instance v1, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback$1;-><init>(Lcom/ss/android/ttvecamera/TECamera2$CameraStateCallback;Lcom/ss/android/ttvecamera/TECamera2;)V

    .line 127
    iget-object p0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz p0, :cond_2c

    .line 128
    iget-object p0, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f

    .line 130
    :cond_2c
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 133
    :goto_2f
    iput-boolean v0, p1, Lcom/ss/android/ttvecamera/TECamera2;->mIsFirstOpenCamera:Z

    const/4 p0, 0x1

    return p0
.end method
