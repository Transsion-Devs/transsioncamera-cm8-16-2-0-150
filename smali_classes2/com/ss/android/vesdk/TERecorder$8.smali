.class Lcom/ss/android/vesdk/TERecorder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
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

    .line 2514
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$8;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    iput-wide p3, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$startGetFrameTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([IIIJ)V
    .registers 16

    .line 2517
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->FOLLOW_SHOT_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_24

    .line 2518
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    if-ne v0, v1, :cond_18

    .line 2519
    const-string v0, "te_record_shot_screen_time"

    goto :goto_1a

    :cond_18
    const-string v0, "te_record_shot_hd_screen_time"

    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$startGetFrameTime:J

    sub-long/2addr v3, v5

    .line 2518
    invoke-static {v2, v0, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2521
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFrameCallback: width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 2523
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    .line 2526
    :cond_53
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_72

    const-wide/16 v0, 0x3e8

    .line 2527
    div-long v7, p4, v0

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_Count:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 2528
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    :cond_72
    return-void
.end method
