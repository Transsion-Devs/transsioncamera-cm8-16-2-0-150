.class public abstract Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNextCaptureReadyListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected final capturing()Z
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected final notifyCaptureReady()V
    .registers 4

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCaptureReady mCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mNextCaptureReadyListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mNextCaptureReadyListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;->nextCaptureReady()V

    :cond_29
    return-void
.end method

.method public setNextCaptureReadyListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mNextCaptureReadyListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    return-void

    .line 38
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mNextCaptureReadyListener:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    return-void
.end method

.method public startCapture()V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startCapture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopCapture()V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopCapture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
