.class Lcom/ss/android/vesdk/VEAudioCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/audio/TEAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEAudioCapture;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEAudioCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEAudioCapture;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioCapture$1;->this$0:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 6

    .line 63
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture$1;->this$0:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-nez v0, :cond_22

    .line 66
    const-string v0, "VEAudioCapture"

    const-string v1, "onError error listener is null"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 69
    :cond_22
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onError(IILjava/lang/String;)V

    goto :goto_c

    :cond_26
    return-void
.end method

.method public onInfo(IIDLjava/lang/Object;)V
    .registers 13

    .line 39
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture$1;->this$0:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-nez v1, :cond_23

    .line 42
    const-string v0, "VEAudioCapture"

    const-string v1, "onInfo error listener is null"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 45
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onInfo(IIDLjava/lang/Object;)V

    goto :goto_c

    :cond_2b
    return-void
.end method

.method public onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V
    .registers 4

    .line 51
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture$1;->this$0:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCapture;->mCaptureListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    if-nez v0, :cond_22

    .line 54
    const-string v0, "VEAudioCapture"

    const-string v1, "onReceive error listener is null"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 57
    :cond_22
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;->onReceive(Lcom/ss/android/vesdk/audio/VEAudioSample;)V

    goto :goto_c

    :cond_26
    return-void
.end method
