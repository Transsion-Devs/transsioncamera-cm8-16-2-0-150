.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm$NextCaptureReadyListenerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;->nextCaptureReady()V

    return-void
.end method
