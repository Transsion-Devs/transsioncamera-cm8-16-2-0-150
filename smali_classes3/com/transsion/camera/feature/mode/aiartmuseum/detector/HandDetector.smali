.class public Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_HANDS_NUMBER:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$Ro8DI9xHucYk6hAUU3b20Rnxoq8(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->lambda$unInit$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wcq8fClS97O3Bw0H7TW6v5ueOWc(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->lambda$init$0(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YTRKgX6v5gkF63E9nckNKnhOZLE(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->lambda$detect$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandDetector"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    return-void
.end method

.method private synthetic lambda$detect$1(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    if-eqz v2, :cond_d

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->detect(Landroid/graphics/Bitmap;)V

    .line 71
    :cond_d
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandDetectorDetect mInitialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", cost: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
    .registers 7

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandDetectorInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 51
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->setLandmarkerListener(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;

    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;-><init>()V

    const/4 v4, 0x1

    .line 53
    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->maxNumHands(I)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->build()Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    move-result-object v3

    .line 52
    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->init(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;)V

    .line 54
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HandDetectorInit cost "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$unInit$2()V
    .registers 6

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandDetectorUnInit mInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 82
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    if-eqz v3, :cond_28

    .line 83
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandLandmarkerHelper:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->unInit()V

    const/4 v3, 0x0

    .line 84
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mInitialized:Z

    .line 86
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandDetectorUnInit cost "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized detect(Landroid/graphics/Bitmap;)V
    .registers 4

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 63
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "detect: mHandler is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 64
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_1a

    .line 66
    :cond_10
    :try_start_10
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    .line 74
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_e

    throw p1
.end method

.method public declared-synchronized init(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
    .registers 5

    monitor-enter p0

    .line 42
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HandDetector"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 46
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    const-string p1, "init end"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 59
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public declared-synchronized unInit()V
    .registers 5

    monitor-enter p0

    .line 77
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 89
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->mHandler:Landroid/os/Handler;

    .line 90
    const-string/jumbo v1, "unInit end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 91
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method
