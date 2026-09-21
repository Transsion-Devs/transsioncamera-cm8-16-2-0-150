.class Lcom/ss/android/vesdk/VERecorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$height:I

.field final synthetic val$isTakePicture:Z

.field final synthetic val$needEffect:Z

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

.field final synthetic val$shotScreenStartTime:J

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;ZJZIILcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)V
    .registers 9

    .line 1540
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$6;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$isTakePicture:Z

    iput-wide p3, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$shotScreenStartTime:J

    iput-boolean p5, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$needEffect:Z

    iput p6, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$width:I

    iput p7, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$height:I

    iput-object p8, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotScreen(I)V
    .registers 8

    .line 1543
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$isTakePicture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$shotScreenStartTime:J

    sub-long/2addr v2, v4

    const-string v0, "te_record_shot_screen_time"

    invoke-static {v1, v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1546
    :cond_11
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$needEffect:Z

    if-eqz v0, :cond_18

    const-string v0, "te_record_shot_screen_with_effect_ret"

    goto :goto_1a

    .line 1547
    :cond_18
    const-string v0, "te_record_shot_screen_without_effect_ret"

    :goto_1a
    int-to-long v2, p1

    .line 1546
    invoke-static {v1, v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1549
    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1550
    const-string v1, "width"

    iget v2, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1551
    const-string v1, "height"

    iget v2, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1552
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$isTakePicture:Z
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_33} :catch_44

    const-string v2, "behavior"

    const-string v3, "tag"

    if-eqz v1, :cond_46

    .line 1553
    :try_start_39
    const-string v1, "takePicture"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1554
    const-string v1, "vesdk_event_recorder_take_picture"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_54

    :catch_44
    move-exception v0

    goto :goto_51

    .line 1556
    :cond_46
    const-string v1, "shotScreen"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1557
    const-string v1, "vesdk_event_recorder_shot_screen"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_50} :catch_44

    goto :goto_54

    .line 1561
    :goto_51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1564
    :goto_54
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$6;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return-void
.end method
