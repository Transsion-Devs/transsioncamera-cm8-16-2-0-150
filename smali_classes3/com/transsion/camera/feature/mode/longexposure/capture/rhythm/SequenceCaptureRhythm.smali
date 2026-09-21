.class public Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;
.source "SourceFile"


# static fields
.field private static final MIN_CAPTURE_INTERVAL:J = 0x1f4L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLastReadyTime:J

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 8

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->capturing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mLastReadyTime:J

    sub-long v2, v0, v2

    .line 41
    sget-object v4, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureProgress elapseTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mLastReadyTime:J

    const-wide/16 v0, 0x1f4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_37

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 48
    :cond_37
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    return-void
.end method

.method public startCapture()V
    .registers 5

    .line 30
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->startCapture()V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mLastReadyTime:J

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture mLastReadyTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/SequenceCaptureRhythm;->mLastReadyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
