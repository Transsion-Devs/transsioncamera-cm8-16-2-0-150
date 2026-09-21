.class Lcom/ss/android/vesdk/VERecorder$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$getPreviewFrameStartTime:J

.field final synthetic val$originalListener:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;JLcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)V
    .registers 6

    .line 6021
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$18;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    iput-wide p3, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$getPreviewFrameStartTime:J

    iput-object p5, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$originalListener:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/ttve/model/VEFrame;I)V
    .registers 3

    .line 6061
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$originalListener:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    if-eqz p0, :cond_7

    .line 6062
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    :cond_7
    return-void
.end method

.method public onResult([III)V
    .registers 11

    .line 6024
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->HD_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6025
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$getPreviewFrameStartTime:J

    sub-long/2addr v3, v5

    const-string v0, "te_record_shot_screen_time"

    invoke-static {v2, v0, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6027
    :cond_29
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getEffectType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    move-result-object v0

    sget-object v3, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "te_record_shot_screen_without_effect_ret"

    goto :goto_3c

    .line 6028
    :cond_3a
    const-string v0, "te_record_shot_screen_with_effect_ret"

    :goto_3c
    iget-object v3, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getEffectType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-long v3, v3

    .line 6027
    invoke-static {v2, v0, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6030
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6031
    iget-object v2, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 6032
    const-string v2, "width"

    iget-object v3, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6033
    const-string v2, "height"

    iget-object v3, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_74

    :catch_72
    move-exception v0

    goto :goto_9d

    .line 6035
    :cond_74
    :goto_74
    iget-object v2, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v1

    sget-object v2, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->HD_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 6036
    :cond_8e
    const-string v1, "tag"

    const-string v2, "shotScreen"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6037
    const-string v1, "vesdk_event_recorder_shot_screen"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_9c} :catch_72

    goto :goto_a0

    .line 6041
    :goto_9d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6044
    :cond_a0
    :goto_a0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6045
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6046
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getEffectType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_effect"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6047
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VESize;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera_photo_size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$getPreviewFrameStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_cost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6050
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$originalListener:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    if-eqz v1, :cond_f1

    .line 6051
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult([III)V

    .line 6054
    :cond_f1
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameOnInfoCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

    move-result-object p1

    if-eqz p1, :cond_102

    .line 6055
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$18;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameOnInfoCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;->onInfo(Ljava/util/HashMap;)V

    :cond_102
    return-void
.end method
