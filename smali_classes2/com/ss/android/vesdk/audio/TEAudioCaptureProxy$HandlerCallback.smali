.class Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerCallback"
.end annotation


# static fields
.field public static final MSG_INIT:I = 0x0

.field public static final MSG_RELEASE:I = 0x3

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x2


# instance fields
.field private mWeakServer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;)V
    .registers 3

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;->mWeakServer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 413
    iget v0, p1, Landroid/os/Message;->what:I

    .line 414
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy$HandlerCallback;->mWeakServer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;

    const/4 v1, 0x0

    .line 417
    const-string v2, "TEAudioCaptureProxy"

    if-nez p0, :cond_17

    .line 418
    const-string p0, "audio capture is null"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    if-eqz v0, :cond_6f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_54

    const/4 v3, 0x2

    if-eq v0, v3, :cond_39

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 447
    const-string p0, "mic msg error"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 439
    :cond_28
    check-cast p1, Lcom/bytedance/bpea/basics/Cert;

    .line 441
    # setter for: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryInitCount:I
    invoke-static {p0, v1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$002(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;I)I

    .line 442
    # setter for: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->mRetryStartCount:I
    invoke-static {p0, v1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$402(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;I)I

    .line 443
    # invokes: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realReleaseMic(Lcom/bytedance/bpea/basics/Cert;)V
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$500(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)V

    .line 444
    const-string p0, "release mic"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 434
    :cond_39
    check-cast p1, Lcom/bytedance/bpea/basics/Cert;

    .line 435
    # invokes: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStopMic(Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$300(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop mic:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 429
    :cond_54
    check-cast p1, Lcom/bytedance/bpea/basics/Cert;

    .line 430
    # invokes: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realStartMic(Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$200(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start mic:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 424
    :cond_6f
    check-cast p1, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 425
    # invokes: Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->realInitMic(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;->access$100(Lcom/ss/android/vesdk/audio/TEAudioCaptureProxy;Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    move-result p0

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mic:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_89
    return v1
.end method
