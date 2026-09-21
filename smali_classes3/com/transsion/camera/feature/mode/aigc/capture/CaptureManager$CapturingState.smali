.class Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;
.super Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;


# direct methods
.method public static synthetic $r8$lambda$mjoXPiIuhBF9Nf3b2-RH1Bo7T4c(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->lambda$triggerRoutineCapture$0([B)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V
    .registers 4

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    .line 248
    const-string v0, "CapturingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    return-void
.end method

.method private synthetic lambda$triggerRoutineCapture$0([B)V
    .registers 5

    .line 285
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerRoutineCapture onCaptureShot jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_13

    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    array-length v2, p1

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$monShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V

    return-void
.end method

.method private triggerAIGCCapture()V
    .registers 5

    .line 291
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmTemplate(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAIGCCapture captureInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCaptureShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureShot(Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;->previewShot(Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;)V

    return-void
.end method

.method private triggerCapture()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmFaceMonitor(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->getDetectedFaces()[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerCapture faceInfos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_31

    .line 273
    array-length v0, v0

    if-nez v0, :cond_2d

    goto :goto_31

    .line 277
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->triggerAIGCCapture()V

    goto :goto_3d

    .line 274
    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->triggerRoutineCapture()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/IHintUI;->showNoFaceCaptureTip()V

    .line 279
    :goto_3d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmTemplate(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIGCEffectValue(Ljava/lang/String;)V

    return-void
.end method

.method private triggerRoutineCapture()V
    .registers 3

    .line 283
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "triggerRoutineCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCaptureShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureShot(Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;)V

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onEntry()V
    .registers 3

    .line 253
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onEntry()V

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportShutterTriggerTypeData(Z)V

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->triggerCapture()V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    return-void
.end method

.method public onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 9

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V

    .line 322
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShot captureInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", previewShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p2, :cond_1e

    move v3, v2

    goto :goto_1f

    .line 323
    :cond_1e
    array-length v3, p2

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewJpeg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2b

    move v3, v2

    goto :goto_2c

    .line 324
    :cond_2b
    array-length v3, p3

    :goto_2c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", captureJpeg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_37

    goto :goto_38

    .line 325
    :cond_37
    array-length v2, p4

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_e3

    if-eqz p2, :cond_e3

    if-eqz p3, :cond_e3

    if-nez p4, :cond_4c

    goto/16 :goto_e3

    .line 334
    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 336
    new-instance v2, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;-><init>()V

    const/4 v3, 0x1

    .line 337
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestStatus(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->originalRequestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v2

    .line 339
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmTemplate(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getIndicator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effect(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmTemplate(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effectValue(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->watermark(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->build()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 348
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestLatitude(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestLongitude(Ljava/lang/String;)V

    .line 352
    :cond_aa
    invoke-static {p1, p3, p4}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->cache(Lcom/transsion/camera/app/common/ai/AIRequest;[B[B)Z

    move-result p3

    if-nez p3, :cond_c8

    .line 353
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onShot cache failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 359
    :cond_c8
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/ai/AIGCManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyPreviewShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p1, p4}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 328
    :cond_e3
    :goto_e3
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onShot failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method public onShot([B)V
    .registers 5

    .line 303
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onShot([B)V

    .line 305
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShot jpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_15

    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    array-length v2, p1

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_3a

    .line 308
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onShot failed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 314
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method public shutterClick()Z
    .registers 2

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "shutterClick ignore!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
