.class public Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker;


# static fields
.field private static final HAND_LANDMARKER_TASK:Ljava/lang/String; = "aiartmuseum/mediapipe/hand_landmarker.task"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

.field private mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

.field private volatile mLandmarkerListener:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;


# direct methods
.method public static synthetic $r8$lambda$_fYgIMqCOy5cAYCYM-9ZgkiQ6F0(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;Lcom/google/mediapipe/framework/image/MPImage;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->returnLivestreamResult(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frCEQpSyRoLM_ZvBk-GRIHEtv4U(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;Ljava/lang/RuntimeException;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->returnLivestreamError(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandLandmarkerHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private returnLivestreamError(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 134
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_9
    const-string p1, "An unknown error has occurred"

    :goto_b
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private returnLivestreamResult(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;Lcom/google/mediapipe/framework/image/MPImage;)V
    .registers 13

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mLandmarkerListener:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    if-nez p0, :cond_5

    return-void

    .line 122
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 123
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;->timestampMs()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 125
    new-instance v4, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;

    .line 127
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 129
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v8

    .line 130
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;-><init>(Ljava/util/List;JII)V

    .line 125
    invoke-interface {p0, v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;->onResults(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V

    return-void
.end method


# virtual methods
.method public detect(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    if-nez v0, :cond_9

    goto :goto_25

    .line 105
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 107
    new-instance v2, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    invoke-direct {v2, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    .line 110
    :try_start_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;->detectAsync(Lcom/google/mediapipe/framework/image/MPImage;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 112
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "detect exception"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_25
    :goto_25
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectLiveStream failed, mHandLandmarkerParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHandLandmarker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;)V
    .registers 7

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 56
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    .line 60
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->currentDelegate()I

    move-result v4

    if-ne v3, v4, :cond_2d

    .line 63
    sget-object v3, Lcom/google/mediapipe/tasks/core/Delegate;->GPU:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    goto :goto_32

    .line 65
    :cond_2d
    sget-object v3, Lcom/google/mediapipe/tasks/core/Delegate;->CPU:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    .line 68
    :goto_32
    const-string v3, "aiartmuseum/mediapipe/hand_landmarker.task"

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    .line 71
    :try_start_37
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;->builder()Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandDetectionConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinHandDetectionConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandTrackingConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinTrackingConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandPresenceConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinHandPresenceConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->maxNumHands()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setNumHands(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object p1

    sget-object v2, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 80
    invoke-virtual {p1, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object p1

    .line 82
    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;)V

    .line 83
    invoke-virtual {p1, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;)V

    .line 84
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;

    move-result-object p1

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;
    :try_end_96
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_96} :catch_99
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_96} :catch_97

    goto :goto_d0

    :catch_97
    move-exception p0

    goto :goto_9b

    :catch_99
    move-exception p0

    goto :goto_b6

    .line 91
    :goto_9b
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image classifier failed to load model with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_d0

    .line 89
    :goto_b6
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPipe failed to load the task with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    :goto_d0
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init end, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setLandmarkerListener(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mLandmarkerListener:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    if-eqz v0, :cond_12

    .line 140
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->close()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    :cond_12
    return-void
.end method
