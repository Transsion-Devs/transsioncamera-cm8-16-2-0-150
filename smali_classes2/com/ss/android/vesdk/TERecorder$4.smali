.class Lcom/ss/android/vesdk/TERecorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/IAudioDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method public static synthetic $r8$lambda$sy31Zc3MkSm-4AlQUwxtOZeqmcM(Lcom/ss/android/vesdk/TERecorder$4;Lcom/ss/android/ttve/model/VEAudioDeviceType;)V
    .registers 3

    .line 414
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    .line 414
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEffect;->setAudioDeviceType(Z)I

    return-void
.end method

.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChanged(Lcom/ss/android/ttve/model/VEAudioDeviceType;)V
    .registers 5

    .line 412
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_recorder_lowmem_async_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 413
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$1900(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/vesdk/TERecorder$4;Lcom/ss/android/ttve/model/VEAudioDeviceType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 417
    :cond_20
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mEffect:Lcom/ss/android/vesdk/VEEffect;

    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    if-ne p1, v0, :cond_29

    const/4 v2, 0x1

    :cond_29
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEffect;->setAudioDeviceType(Z)I

    return-void
.end method
