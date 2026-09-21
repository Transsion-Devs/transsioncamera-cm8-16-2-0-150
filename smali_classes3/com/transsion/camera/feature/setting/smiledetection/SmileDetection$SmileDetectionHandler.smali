.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileDetectionHandler"
.end annotation


# instance fields
.field private mPreviousCaptureTime:J

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;)V
    .registers 3

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    .line 419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_21e

    goto/16 :goto_15f

    .line 493
    :pswitch_9
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmAllowSmileCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V

    return-void

    .line 469
    :pswitch_f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "1"

    :goto_44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4c

    :cond_49
    const-string v1, "0"

    goto :goto_44

    :goto_4c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 471
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 474
    :cond_53
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 487
    :pswitch_70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p1

    if-eqz p1, :cond_15f

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;->onPause()V

    return-void

    .line 477
    :pswitch_87
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto/16 :goto_15f

    .line 480
    :cond_91
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V

    .line 481
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RESUME_SMILE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p1

    if-eqz p1, :cond_15f

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;->onResume()V

    return-void

    .line 465
    :pswitch_c4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)V

    .line 466
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_CHECK_SMILE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 447
    :pswitch_ee
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_160

    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfgetmInit()Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-nez v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmAllowSmileCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-nez v0, :cond_160

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->mPreviousCaptureTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7d0

    cmp-long v0, v0, v3

    if-gez v0, :cond_12a

    goto :goto_160

    .line 453
    :cond_12a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 454
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 455
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 456
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object v3

    invoke-interface {v3, v0, v1, p1}, Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;->detectSmile([BII)Z

    move-result p1

    if-eqz p1, :cond_15f

    const/16 p1, 0x66

    .line 458
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_smile_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "smile_capture_state"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->mPreviousCaptureTime:J

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)V

    :cond_15f
    :goto_15f
    return-void

    .line 449
    :cond_160
    :goto_160
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAllowSmileCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmAllowSmileCapture(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCloseByFlashSnapLite = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 438
    :pswitch_1b5
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfgetmInit()Z

    move-result p1

    if-nez p1, :cond_1c3

    .line 439
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already uninit, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 442
    :cond_1c3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;->unInitSmile()V

    .line 443
    invoke-static {v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfputmInit(Z)V

    .line 444
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unInitSmile"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 426
    :pswitch_1d8
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p1

    if-nez p1, :cond_1e8

    .line 427
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSmileAlgorithm == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_1e8
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfgetmInit()Z

    move-result p1

    if-eqz p1, :cond_1f6

    .line 431
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already init, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 434
    :cond_1f6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$fgetmSmileAlgorithm(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/smiledetection/ISmileDetectAlgorithm;->initSmile()Z

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfputmInit(Z)V

    .line 435
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSmile result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->-$$Nest$sfgetmInit()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_21e
    .packed-switch 0x64
        :pswitch_1d8
        :pswitch_1b5
        :pswitch_ee
        :pswitch_c4
        :pswitch_87
        :pswitch_70
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
