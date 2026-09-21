.class public Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/RhythmFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 21
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;-><init>()V

    return-object p0

    .line 23
    :cond_c
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;-><init>()V

    return-object p0
.end method
