.class Lcom/ss/android/vesdk/TERecorder$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 4275
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate(I)I
    .registers 6

    .line 4278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpenGLCreate...ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TERecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->isCameraPreviewIndependent()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 4280
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/camera/TECamera;->createFrameOESTextureIfNeed()V

    .line 4282
    :cond_35
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder;->mVideoDataClient:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->onGLEnvInited()V

    .line 4283
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 4284
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$600(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/camera/TECamera;->start(Lcom/ss/android/vesdk/camera/ICameraPreview;)I

    move-result p0

    return p0

    .line 4286
    :cond_51
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Render Env Created."

    # invokes: Lcom/ss/android/vesdk/TERecorder;->dispatchStateMsg(IIFLjava/lang/String;)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->access$000(Lcom/ss/android/vesdk/TERecorder;IIFLjava/lang/String;)V

    .line 4287
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 4288
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_6d
    return v1
.end method

.method public onOpenGLDestroy(I)I
    .registers 6

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpenGLDestroy...ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TERecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder;->mCameraClient:Lcom/ss/android/vesdk/camera/TECamera;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/camera/TECamera;->release()V

    .line 4316
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder;->mVideoDataClient:Lcom/ss/android/vesdk/video/TEVideoDataInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/video/TEVideoDataInterface;->destroy()V

    .line 4317
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Render Env Destroy."

    # invokes: Lcom/ss/android/vesdk/TERecorder;->dispatchStateMsg(IIFLjava/lang/String;)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->access$000(Lcom/ss/android/vesdk/TERecorder;IIFLjava/lang/String;)V

    .line 4318
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 4319
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_40
    return v1
.end method

.method public onOpenGLDrawAfter(ID)I
    .registers 6

    .line 4305
    const-string p1, "TERecorder"

    const-string v0, "onOpenGLDrawAfter..."

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 4307
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render Draw After\uff0ctimeStamp: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ed

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p3, p1}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_2d
    return v0
.end method

.method public onOpenGLDrawBefore(ID)I
    .registers 6

    .line 4296
    const-string p1, "TERecorder"

    const-string v0, "onOpenGLDrawBefore..."

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 4298
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$19;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mUserCommonCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$1500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render Draw Before: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ec

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p3, p1}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_2d
    return v0
.end method

.method public onPreviewSurface(I)I
    .registers 3

    .line 4326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewSurface: ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
