.class Lcom/ss/android/vesdk/TERecorder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->getPreviewFrameWithOrigin(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

.field final synthetic val$startGetFrameTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;J)V
    .registers 5

    .line 2550
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$9;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    iput-wide p3, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$startGetFrameTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 15

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRenderFrameCallback: width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->FOLLOW_SHOT_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_42

    .line 2555
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    if-ne v0, v2, :cond_36

    .line 2556
    const-string v0, "te_record_shot_screen_time"

    goto :goto_38

    :cond_36
    const-string v0, "te_record_shot_hd_screen_time"

    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$startGetFrameTime:J

    sub-long/2addr v4, v6

    .line 2555
    invoke-static {v3, v0, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2558
    :cond_42
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_84

    if-nez p1, :cond_66

    .line 2560
    const-string p1, "mRenderFrameCallback: data is null"

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    .line 2562
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    return-void

    .line 2564
    :cond_66
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    const-wide/16 v8, 0x0

    .line 2565
    sget-object v10, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_Count:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v4 .. v10}, Lcom/ss/android/ttve/model/VEFrame;->createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 2566
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$9;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    invoke-interface {p0, p1, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    :cond_84
    return-void
.end method
