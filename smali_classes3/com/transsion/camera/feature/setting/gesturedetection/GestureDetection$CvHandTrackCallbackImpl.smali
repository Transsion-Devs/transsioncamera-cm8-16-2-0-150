.class public Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CvHandTrackCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureDetected([Lcom/tetras/hand/model/CvHandInfo;)Z
    .registers 9

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x6e

    .line 503
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 505
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmAllowedCapture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmFocusScanActive(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmShutterUIProcessing(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto/16 :goto_100

    .line 510
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmPreviousCaptureTime(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_63

    .line 511
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "don\'t allow continuous shot too quickly."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_63
    if-eqz p1, :cond_ff

    .line 515
    array-length v0, p1

    move v2, v1

    :goto_67
    if-ge v2, v0, :cond_ff

    aget-object v3, p1, v2

    .line 516
    iget v4, v3, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_ce

    .line 517
    iget p1, v3, Lcom/tetras/hand/model/CvHandInfo;->score:F

    const v0, 0x3f733333    # 0.95f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9e

    .line 518
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore hand score: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/tetras/hand/model/CvHandInfo;->score:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 521
    :cond_9e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmGestureAlgorithm(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;->setDetAllowed(Z)V

    .line 522
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmPreviousCaptureTime(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;J)V

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    const-string p1, "key_gesture_state"

    const-string v0, "gesture_capture_state"

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    const/4 p0, 0x1

    return p0

    .line 528
    :cond_ce
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onGestureDetected] handType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", score: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/tetras/hand/model/CvHandInfo;->score:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", handInfo.len: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_67

    :cond_ff
    return v1

    .line 506
    :cond_100
    :goto_100
    invoke-static {}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onGestureDetected] mResumed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFocusScanActive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmFocusScanActive(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterUIProcessing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmShutterUIProcessing(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCloseByFlashSnapLite: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$CvHandTrackCallbackImpl;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method
