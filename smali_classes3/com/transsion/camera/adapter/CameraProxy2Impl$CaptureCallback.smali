.class abstract Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CaptureCallback"
.end annotation


# instance fields
.field private mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 4507
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method

.method private getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    .line 4577
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method private isCusDeferRequestModeAvailable([I)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_14

    .line 4593
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_14

    .line 4594
    array-length v0, p1

    move v1, p0

    :goto_9
    if-ge v1, v0, :cond_14

    aget v2, p1, v1

    if-lez v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    return p0
.end method

.method private isNeedUpdateCaptureState([I)Z
    .registers 7

    .line 4581
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->isCusDeferRequestModeAvailable([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4584
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isCusDeferRequestMode()Z

    move-result v0

    .line 4585
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportLowQualityMode()Z

    move-result v2

    .line 4586
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->isSupportHighQualityMode()Z

    move-result p0

    .line 4587
    aget v3, p1, v1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2a

    aget v0, p1, v4

    if-ne v2, v0, :cond_2a

    const/4 v0, 0x2

    aget p1, p1, v0

    if-eq p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    return v4
.end method

.method private updateCurrentCaptureState(Lcom/transsion/camera/adapter/CameraParameters2Impl;Landroid/hardware/camera2/CaptureResult;JLjava/lang/String;)V
    .registers 10

    if-nez p2, :cond_3

    goto :goto_11

    .line 4540
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 4541
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_11
    :goto_11
    const/4 v0, 0x0

    if-nez p2, :cond_16

    move-object p2, v0

    goto :goto_1a

    .line 4543
    :cond_16
    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 4545
    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    if-eqz v1, :cond_54

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_2d

    goto :goto_54

    .line 4556
    :cond_2d
    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->isNeedUpdateCaptureState([I)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 4557
    new-instance p1, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    invoke-direct {p1, p3}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;-><init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 4558
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setCusDeferRequestMode([I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "::update"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4559
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setDescription(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object v0

    goto :goto_9b

    .line 4546
    :cond_54
    :goto_54
    new-instance v0, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    invoke-direct {v0, p3, p4}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;-><init>(J)V

    .line 4547
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setPostAlgoType(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p3

    .line 4548
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setTranssionTurboFusionMode(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p3

    .line 4549
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimMode()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setSlimBodyMode(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p3

    .line 4550
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAiRawScene()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setAiRawScene(I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p3

    .line 4551
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setPortraitModeEnhanceMode(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "::create"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4552
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setDescription(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object v0

    if-eqz p2, :cond_9b

    .line 4554
    invoke-virtual {v0, p2}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setCusDeferRequestMode([I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_a3

    .line 4564
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->build()Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    :cond_a3
    return-void
.end method


# virtual methods
.method public getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;
    .registers 8

    .line 4570
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    if-nez v0, :cond_14

    .line 4571
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v2

    const-wide/16 v4, -0x1

    const-string v6, "getCaptureState"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->updateCurrentCaptureState(Lcom/transsion/camera/adapter/CameraParameters2Impl;Landroid/hardware/camera2/CaptureResult;JLjava/lang/String;)V

    goto :goto_15

    :cond_14
    move-object v1, p0

    .line 4573
    :goto_15
    iget-object p0, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->mCaptureState:Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    return-object p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 10

    .line 4530
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4531
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    const-wide/16 v3, -0x1

    const-string v5, "onCaptureCompleted"

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->updateCurrentCaptureState(Lcom/transsion/camera/adapter/CameraParameters2Impl;Landroid/hardware/camera2/CaptureResult;JLjava/lang/String;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 10

    .line 4522
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 4523
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    const-wide/16 v3, -0x1

    const-string v5, "onCaptureProgressed"

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->updateCurrentCaptureState(Lcom/transsion/camera/adapter/CameraParameters2Impl;Landroid/hardware/camera2/CaptureResult;JLjava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 4514
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 4515
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    const/4 p2, 0x0

    const-string p5, "onCaptureStarted"

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->updateCurrentCaptureState(Lcom/transsion/camera/adapter/CameraParameters2Impl;Landroid/hardware/camera2/CaptureResult;JLjava/lang/String;)V

    return-void
.end method
