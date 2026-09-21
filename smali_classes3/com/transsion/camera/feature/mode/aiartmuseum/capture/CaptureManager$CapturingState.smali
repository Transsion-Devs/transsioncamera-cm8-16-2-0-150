.class Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V
    .registers 4

    .line 277
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    .line 278
    const-string v0, "CapturingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V

    return-void
.end method

.method private triggerCapture()V
    .registers 5

    .line 301
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmEffect(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mgetEffectValue(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerCapture captureInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmCaptureShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureShot(Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot$ICaptureShotCallback;)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmPreviewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;->previewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot$IPreviewShotCallback;)V

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

    .line 283
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->onEntry()V

    .line 284
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->reportShutterTriggerTypeData(Z)V

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->triggerCapture()V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V

    return-void
.end method

.method public onShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 9

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->onShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V

    .line 315
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 316
    :cond_1e
    array-length v3, p2

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewJpeg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2b

    move v3, v2

    goto :goto_2c

    .line 317
    :cond_2b
    array-length v3, p3

    :goto_2c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", captureJpeg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_37

    goto :goto_38

    .line 318
    :cond_37
    array-length v2, p4

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_df

    if-eqz p2, :cond_df

    if-eqz p3, :cond_df

    if-nez p4, :cond_4c

    goto/16 :goto_df

    .line 327
    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    new-instance v2, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;-><init>()V

    const/4 v3, 0x1

    .line 330
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestStatus(I)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->originalRequestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->requestTime(J)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmEffect(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effect(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmEffectValue(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->effectValue(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->-$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->watermark(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIRequest$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest$Builder;->build()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 341
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestLatitude(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestLongitude(Ljava/lang/String;)V

    .line 345
    :cond_a6
    invoke-static {p1, p3, p4}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->cache(Lcom/transsion/camera/app/common/ai/AIRequest;[B[B)Z

    move-result p3

    if-nez p3, :cond_c4

    .line 346
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onShot cache failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 352
    :cond_c4
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/ai/AIArtManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mnotifyPreviewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;[B)V

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p1, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mnotifyCaptureShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;[B)V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->entry()V

    return-void

    .line 321
    :cond_df
    :goto_df
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onShot failed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method public shutterClick()Z
    .registers 2

    .line 296
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "shutterClick ignore!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
