.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->initPreviewCaptureCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAeMode:Ljava/lang/Integer;

.field private mAeState:Ljava/lang/Integer;

.field private mAfMode:Ljava/lang/Integer;

.field private mAfState:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, -0x1

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfMode:Ljava/lang/Integer;

    .line 462
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfState:Ljava/lang/Integer;

    .line 463
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeMode:Ljava/lang/Integer;

    .line 464
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeState:Ljava/lang/Integer;

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 10

    .line 524
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_cc

    if-eq v0, v4, :cond_10

    goto/16 :goto_128

    .line 552
    :cond_10
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 553
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 554
    const-string v5, "TEImage2Mode"

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_34

    .line 555
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z
    invoke-static {v0, v4}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 556
    const-string v0, "ae trigger start..."

    invoke-static {v5, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_34
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z

    move-result v0

    if-eqz v0, :cond_76

    if-eqz p1, :cond_4d

    .line 560
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_4d

    .line 561
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4b

    goto :goto_4d

    :cond_4b
    move v4, v3

    goto :goto_57

    .line 562
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z
    invoke-static {v0, v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 564
    const-string v0, "ae converge, is shot can do"

    invoke-static {v5, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_57
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ae state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_73
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeState:Ljava/lang/Integer;

    goto :goto_77

    :cond_76
    move v4, v3

    :goto_77
    if-eqz v4, :cond_128

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 574
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I
    invoke-static {p1, v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$302(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I

    .line 575
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->isAEPreCaptureTriggerStart:Z
    invoke-static {p1, v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 576
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 577
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    const/16 v2, 0x3ef

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    const/16 v2, 0x3ee

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p0

    const/16 p1, 0x3ed

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    :cond_b7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "send-capture-command consume = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 526
    :cond_cc
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, -0x1

    if-eqz p1, :cond_dc

    .line 527
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_dd

    :cond_dc
    move p1, v0

    .line 528
    :goto_dd
    iget-object v5, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    if-eq p1, v0, :cond_e8

    if-eq p1, v2, :cond_e8

    if-ne p1, v1, :cond_e6

    goto :goto_e8

    :cond_e6
    move v6, v3

    goto :goto_e9

    :cond_e8
    :goto_e8
    move v6, v4

    :goto_e9
    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsAfConvergeOnPreview:Z
    invoke-static {v5, v6}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$402(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 532
    iget-object v5, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v5}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    if-eqz v5, :cond_128

    .line 534
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_128

    .line 536
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_128

    if-eq v1, p1, :cond_10b

    const/4 v1, 0x5

    if-eq v1, p1, :cond_10b

    if-ne v0, p1, :cond_10c

    :cond_10b
    move v3, v4

    :cond_10c
    if-eqz v3, :cond_128

    .line 540
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 539
    invoke-virtual {v5, v6, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 541
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    if-eqz p1, :cond_128

    .line 542
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p0

    const/16 p1, 0x3ec

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_128
    :goto_128
    return-void
.end method

.method private processForCaptureOnAeAfConverge(Landroid/hardware/camera2/CaptureResult;)V
    .registers 12

    .line 467
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 468
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 469
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 470
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    if-eqz v0, :cond_28

    .line 472
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_29

    :cond_28
    move v0, v4

    :goto_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v1, :cond_34

    .line 473
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_35

    :cond_34
    move v1, v4

    :goto_35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_40

    .line 474
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_41

    :cond_40
    move v2, v4

    :goto_41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v3, :cond_4c

    .line 475
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4d

    :cond_4c
    move v3, v4

    :goto_4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 477
    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfMode:Ljava/lang/Integer;

    invoke-virtual {v7, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "TEImage2Mode"

    if-eqz v7, :cond_73

    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfState:Ljava/lang/Integer;

    .line 478
    invoke-virtual {v7, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeMode:Ljava/lang/Integer;

    .line 479
    invoke-virtual {v7, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    iget-object v7, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeState:Ljava/lang/Integer;

    .line 480
    invoke-virtual {v7, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 481
    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[afMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", afState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",aeMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", aeState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_a4
    iput-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfMode:Ljava/lang/Integer;

    .line 487
    iput-object v5, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAfState:Ljava/lang/Integer;

    .line 488
    iput-object v2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeMode:Ljava/lang/Integer;

    .line 489
    iput-object v6, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->mAeState:Ljava/lang/Integer;

    .line 491
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "CAPTURE_REQUEST_TAG_FOR_SHOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 492
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 v0, 0x1

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z
    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 493
    const-string p1, "is shot can do"

    invoke-static {v8, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_c7
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z

    move-result p1

    if-nez p1, :cond_d5

    .line 497
    const-string p0, "discard previous callback"

    invoke-static {v8, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d5
    const/4 p1, 0x2

    const/4 v0, 0x4

    if-eq v1, v4, :cond_e2

    if-eq v1, v0, :cond_e2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_e2

    if-ne v1, p1, :cond_e1

    goto :goto_e2

    :cond_e1
    return-void

    :cond_e2
    :goto_e2
    if-eq v3, v4, :cond_ea

    if-eq v3, v0, :cond_ea

    if-ne v3, p1, :cond_e9

    goto :goto_ea

    :cond_e9
    return-void

    .line 513
    :cond_ea
    :goto_ea
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mWaitingAfAeConvergeStartTimestamp:J
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 514
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 p1, 0x0

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "send-capture-command consume = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string p0, "te_record_send_capture_command_cost"

    invoke-static {p0, v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    .line 641
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_22

    .line 642
    const-string p1, "CAPTURE_REQUEST_TAG_FOR_SHOT"

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 643
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 p1, 0x1

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 644
    const-string p0, "TEImage2Mode"

    const-string p1, "onCaptureBufferLost: "

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 9

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 599
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const-string v1, "TEImage2Mode"

    const/4 v2, 0x0

    if-lez v0, :cond_3a

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on frame arrived fps: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I
    invoke-static {v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I
    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$802(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I

    .line 602
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameArrivedTimestamp:J
    invoke-static {v0, p1, p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$702(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;J)J

    goto :goto_3f

    .line 604
    :cond_3a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # operator++ for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mFrameCountPerSec:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$808(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    .line 607
    :goto_3f
    invoke-direct {p0, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 608
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 609
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # invokes: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    .line 610
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 p2, 0x1

    # setter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z
    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1102(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFirstRepeatingRequestStartTimestamp:J
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first preview frame callback arrived! consume = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", session consume: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionConsume:J
    invoke-static {v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "te_record_camera2_set_repeating_request_cost"

    invoke-static {v0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 614
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    :cond_8e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9a

    .line 617
    invoke-direct {p0, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->processForCaptureOnAeAfConverge(Landroid/hardware/camera2/CaptureResult;)V

    .line 620
    :cond_9a
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # operator++ for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1408(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    .line 621
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mEnableGcForCameraMetadataThreshold:I
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p2

    if-le p1, p2, :cond_c1

    .line 622
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCountCaptureFrame:I
    invoke-static {p1, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1402(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I

    .line 623
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 626
    :cond_c1
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # operator++ for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1608(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    .line 627
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_d5

    .line 628
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I
    invoke-static {p1, v2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1602(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;I)I

    .line 631
    :cond_d5
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)[Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    if-eqz p1, :cond_eb

    .line 632
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mZslBufferMetadataCache:[Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)[Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCurrentZslMetadataCacheIndex:I
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$1600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p0

    aput-object p3, p1, p0

    :cond_eb
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 653
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mState:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_22

    .line 654
    const-string p1, "CAPTURE_REQUEST_TAG_FOR_SHOT"

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 655
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    const/4 p1, 0x1

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mIsShotCanDoOnAfAeConverge:Z
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$002(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Z)Z

    .line 656
    const-string p0, "TEImage2Mode"

    const-string p1, "onCaptureFailed: "

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 591
    invoke-direct {p0, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
