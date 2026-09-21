.class Lcom/ss/android/vesdk/VERecorder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$bitmapOriginalListener:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

.field final synthetic val$shotScreenStartTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;JLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 6

    .line 1744
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$8;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    iput-wide p3, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$shotScreenStartTime:J

    iput-object p5, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$bitmapOriginalListener:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotScreen(Landroid/graphics/Bitmap;I)V
    .registers 9

    .line 1747
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isTakePicture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$shotScreenStartTime:J

    sub-long/2addr v2, v4

    const-string v0, "te_record_shot_screen_time"

    invoke-static {v1, v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1750
    :cond_15
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "te_record_shot_screen_with_effect_ret"

    goto :goto_22

    .line 1751
    :cond_20
    const-string v0, "te_record_shot_screen_without_effect_ret"

    :goto_22
    int-to-long v2, p2

    .line 1750
    invoke-static {v1, v0, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1753
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1754
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1755
    const-string v1, "width"

    iget-object v2, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1756
    const-string v1, "height"

    iget-object v2, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_50

    :catch_4e
    move-exception v0

    goto :goto_72

    .line 1758
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isTakePicture()Z

    move-result v1
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_56} :catch_4e

    const-string v2, "behavior"

    const-string v3, "tag"

    if-eqz v1, :cond_67

    .line 1759
    :try_start_5c
    const-string v1, "takePicture"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1760
    const-string v1, "vesdk_event_recorder_take_picture"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_75

    .line 1762
    :cond_67
    const-string v1, "shotScreen"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1763
    const-string v1, "vesdk_event_recorder_shot_screen"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_71} :catch_4e

    goto :goto_75

    .line 1767
    :goto_72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1770
    :goto_75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1771
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isTakePicture()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_effect"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VESize;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera_photo_size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$shotScreenStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_cost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    const-string v1, "error_code"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$bitmapOriginalListener:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    if-eqz v1, :cond_c7

    .line 1778
    invoke-interface {v1, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    .line 1781
    :cond_c7
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getOnInfoCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenOnInfoCallback;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 1782
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$8;->val$settings:Lcom/ss/android/vesdk/VEShotScreenSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getOnInfoCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenOnInfoCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VERecorder$IShotScreenOnInfoCallback;->onInfo(Ljava/util/HashMap;)V

    :cond_d8
    return-void
.end method
