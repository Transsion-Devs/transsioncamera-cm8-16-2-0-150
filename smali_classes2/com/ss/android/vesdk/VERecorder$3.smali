.class Lcom/ss/android/vesdk/VERecorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 1124
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$3;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$3;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .registers 5

    .line 1127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1129
    :try_start_5
    const-string v1, "resultCode"

    if-lez p1, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    const/4 v2, -0x1

    :goto_c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1130
    const-string v1, "vesdk_event_recorder_record_finish"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 1133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1136
    :goto_1b
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$3;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_22

    .line 1137
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_22
    return-void
.end method
