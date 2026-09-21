.class public Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;
.source "SourceFile"


# static fields
.field private static final CAPTURING_INTERVAL:J = 0x5aL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnable(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public captureComplete()V
    .registers 1

    return-void
.end method

.method public startCapture()V
    .registers 4

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->startCapture()V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopCapture()V
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BaseCaptureRhythm;->stopCapture()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/rhythm/BurstCaptureRhythm;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
