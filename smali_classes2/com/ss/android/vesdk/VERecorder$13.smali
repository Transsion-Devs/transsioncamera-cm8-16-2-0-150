.class Lcom/ss/android/vesdk/VERecorder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
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

    .line 2424
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$13;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$13;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .registers 3

    .line 2427
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$13;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_7

    .line 2428
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 2431
    :cond_7
    :try_start_7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 2432
    const-string v0, "resultCode"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2433
    const-string p1, "vesdk_event_recorder_start_preview_async"

    const-string v0, "behavior"

    invoke-static {p1, p0, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 2435
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
