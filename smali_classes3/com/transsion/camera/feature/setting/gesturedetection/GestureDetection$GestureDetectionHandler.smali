.class Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Landroid/os/Looper;)V
    .registers 3

    .line 396
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    .line 397
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_150

    goto/16 :goto_14f

    .line 450
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmShutterUIProcessing(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    return-void

    .line 427
    :pswitch_e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "1"

    :goto_3d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_45

    :cond_42
    const-string v1, "0"

    goto :goto_3d

    :goto_45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 430
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 433
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_6b
    const/16 p1, 0x65

    .line 447
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 436
    :pswitch_71
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 440
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p1

    if-eqz p1, :cond_98

    goto/16 :goto_14f

    .line 443
    :cond_98
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    const/16 p1, 0x64

    .line 444
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 422
    :pswitch_a4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->setDetAllowed(Z)V

    .line 424
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] setDetAllowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 416
    :pswitch_df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 417
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 418
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object p0

    invoke-interface {p0, v0, v1, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->detectGesture([BII)Z

    return-void

    .line 410
    :pswitch_f1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p1

    if-eqz p1, :cond_14f

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->unInitGesture()V

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    return-void

    .line 404
    :pswitch_108
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object p1

    if-eqz p1, :cond_14f

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p1

    if-nez p1, :cond_14f

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmCvHandTrackCallback(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->initGesture(ZLjava/lang/String;Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    .line 406
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do init result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$GestureDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_14f
    :goto_14f
    return-void

    :pswitch_data_150
    .packed-switch 0x64
        :pswitch_108
        :pswitch_f1
        :pswitch_df
        :pswitch_a4
        :pswitch_71
        :pswitch_6b
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
