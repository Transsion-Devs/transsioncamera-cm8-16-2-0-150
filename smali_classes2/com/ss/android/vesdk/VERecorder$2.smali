.class Lcom/ss/android/vesdk/VERecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 1053
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$2;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput p2, p0, Lcom/ss/android/vesdk/VERecorder$2;->val$speed:F

    iput-object p3, p0, Lcom/ss/android/vesdk/VERecorder$2;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .registers 6

    .line 1056
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1058
    :try_start_5
    const-string v1, "speed"

    iget v2, p0, Lcom/ss/android/vesdk/VERecorder$2;->val$speed:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1059
    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1060
    const-string v1, "vesdk_event_recorder_start_record_async"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1066
    :goto_1e
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$2;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_25

    .line 1067
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_25
    return-void
.end method
