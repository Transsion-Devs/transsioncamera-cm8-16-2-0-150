.class Lcom/transsion/camera/adapter/CameraProxy2Impl$1;
.super Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraOfflineSession;)V
    .registers 5

    .line 438
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSessionCallback, [onClosed] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/IBGSurface;->updateBGOfflineState(I)V

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->forceReleaseSurface()V

    .line 443
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onClosed()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraOfflineSession;I)V
    .registers 5

    .line 423
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchToOfflineSessionCallback, [onError] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , mIsOffLineSessionReady:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOfflineSessionError(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSwitchOfflineType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    xor-int/2addr p2, v1

    invoke-interface {p1, v0, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onError(IZ)V

    .line 429
    :cond_50
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraOfflineSession;->close()V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraOfflineSession;)V

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    :cond_75
    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraOfflineSession;)V
    .registers 4

    .line 410
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToOfflineSessionCallback, [onIdle] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onIdle()V

    .line 414
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraOfflineSession;->close()V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraOfflineSession;)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    :cond_54
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraOfflineSession;)V
    .registers 4

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getPictureCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmPictureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)V

    .line 386
    :cond_15
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToOfflineSessionCallback, [onReady] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mPictureCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPictureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSwitchOfflineType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onReady(I)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsOfflineSessionError(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPictureCount(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p1

    if-gtz p1, :cond_83

    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraOfflineSession;->close()V

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmOfflineSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraOfflineSession;)V

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOfflineSessionError(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    :cond_83
    return-void
.end method

.method public onSwitchFailed(Landroid/hardware/camera2/CameraOfflineSession;)V
    .registers 3

    .line 399
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "switchToOfflineSessionCallback, [onSwitchFailed]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/IBGSurface;->updateBGOfflineState(I)V

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmImageSurface(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->forceReleaseSurface()V

    .line 404
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSwitchOfflineType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;->onSwitchFailed(I)V

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmIsOffLineSessionReady(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    return-void
.end method
