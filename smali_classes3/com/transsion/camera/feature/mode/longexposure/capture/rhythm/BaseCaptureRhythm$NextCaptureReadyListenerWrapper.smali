.class Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextCaptureReadyListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    return-void
.end method


# virtual methods
.method public nextCaptureReady()V
    .registers 3

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;->nextCaptureReady()V

    return-void

    .line 80
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
