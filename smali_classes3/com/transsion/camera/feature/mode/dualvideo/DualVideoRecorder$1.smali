.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$5pG4vjhGnyKIfkpLbMf8PIXd1J8(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->lambda$onPrepared$0(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cOahyKXp8W0NU1aCVE1NJ3LD9XE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->lambda$onPrepared$1()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPrepared$0(Landroid/opengl/EGLContext;)V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$onPrepared$1()V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 374
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 376
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .registers 4

    .line 366
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_29

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    check-cast p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmMainOperator(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_29

    .line 371
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmRecorderDuration(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;J)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmMainOperator(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .registers 4

    .line 389
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStarted, encoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    .registers 5

    .line 394
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopped,errorCde:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p2, p1, :cond_1e

    if-ne p2, v0, :cond_2c

    .line 396
    :cond_1e
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 397
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    .line 399
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->getRecordingDuration()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmRecorderDuration(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;J)V

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)V

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmMuxer(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)V

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6e
    return-void
.end method
