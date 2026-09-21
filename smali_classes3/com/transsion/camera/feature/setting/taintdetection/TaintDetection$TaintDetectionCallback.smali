.class Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaintDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;-><init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    return-void
.end method


# virtual methods
.method public onTaintDetected(Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V
    .registers 13

    if-eqz p1, :cond_1a5

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 544
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "ignore any detection when alg engine released."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 547
    :cond_14
    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->isDeviceJitter()Z

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5b

    if-nez v0, :cond_5b

    .line 549
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 550
    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmScoreLimit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_40

    .line 551
    invoke-interface {v1, p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_8e

    .line 552
    :cond_40
    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8e

    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmScoreLimit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8e

    .line 553
    invoke-interface {v1, p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_8e

    .line 556
    :cond_5b
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmIsForceTaintDetect(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v6

    if-eqz v6, :cond_68

    if-eqz v1, :cond_68

    .line 557
    invoke-interface {v1, p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 559
    :cond_68
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-lez v4, :cond_8e

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmLastDetTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x85

    cmp-long v4, v6, v8

    if-lez v4, :cond_84

    move-wide v6, v8

    .line 564
    :cond_84
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v4, v8, v9}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V

    .line 567
    :cond_8e
    :goto_8e
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmIsForceTaintDetect(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result v4

    const-string v6, ", isDeviceJitter: "

    const-string v7, ", switchScene: "

    const-string v8, "[onTaintDetected] score: "

    if-eqz v4, :cond_d1

    .line 568
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", callback: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_d1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v9

    cmp-long v1, v9, v2

    if-nez v1, :cond_ee

    .line 572
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmLastDetTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V

    goto :goto_f7

    .line 575
    :cond_ee
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmLastDetTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;J)V

    .line 577
    :goto_f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4b0

    cmp-long v3, v1, v3

    if-lez v3, :cond_133

    .line 579
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release taint alg, it running time limit reached, Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_171

    .line 582
    :cond_133
    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmScoreLimit(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_171

    if-nez v0, :cond_171

    .line 583
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 585
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release taint alg, it found dirty lens event, TaintScore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    :cond_171
    :goto_171
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$TaintDetectionCallback;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fgetmSwitchScene(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1a5
    return-void
.end method
