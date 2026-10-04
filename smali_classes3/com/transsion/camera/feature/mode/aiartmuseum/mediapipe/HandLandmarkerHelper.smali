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

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandLandmarkerHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private returnLivestreamError(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 148
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

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mLandmarkerListener:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    if-nez p0, :cond_5

    return-void

    .line 136
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 137
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;->timestampMs()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 139
    new-instance v4, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;

    .line 141
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 143
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/image/MPImage;->getWidth()I

    move-result v8

    .line 144
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/image/MPImage;->getHeight()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;-><init>(Ljava/util/List;JII)V

    .line 139
    invoke-interface {p0, v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;->onResults(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V

    return-void
.end method


# virtual methods
.method public detect(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    if-nez v0, :cond_9

    goto :goto_25

    .line 119
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 121
    new-instance v2, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    invoke-direct {v2, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    .line 124
    :try_start_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;->detectAsync(Lcom/google/mediapipe/framework/image/MPImage;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 126
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "detect exception"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 114
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
    .registers 8

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 62
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarkerParam:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    .line 66
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->currentDelegate()I

    move-result v5

    if-ne v4, v5, :cond_2d

    .line 69
    sget-object v4, Lcom/google/mediapipe/tasks/core/Delegate;->GPU:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v3, v4}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    goto :goto_32

    .line 71
    :cond_2d
    sget-object v4, Lcom/google/mediapipe/tasks/core/Delegate;->CPU:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v3, v4}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    .line 73
    :goto_32
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    const-string v5, "aiartmuseum/mediapipe/hand_landmarker.task"

    if-eqz v4, :cond_54

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_4c

    .line 76
    const-string p0, "init failed, task is null!"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_4c
    invoke-static {v4}, Lcom/transsion/camera/utils/FileUtil;->loadMappedByteBufferFromFile(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 80
    invoke-virtual {v3, v2}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetBuffer(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    goto :goto_57

    .line 82
    :cond_54
    invoke-virtual {v3, v5}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    .line 85
    :goto_57
    :try_start_57
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;->builder()Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandDetectionConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinHandDetectionConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandTrackingConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinTrackingConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->minHandPresenceConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setMinHandPresenceConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->maxNumHands()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setNumHands(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object p1

    sget-object v2, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 94
    invoke-virtual {p1, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object p1

    .line 96
    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;)V

    .line 98
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;

    .line 100
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;

    move-result-object p1

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker$HandLandmarkerOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;
    :try_end_b6
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_b6} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_b6} :catch_b7

    goto :goto_f0

    :catch_b7
    move-exception p0

    goto :goto_bb

    :catch_b9
    move-exception p0

    goto :goto_d6

    .line 105
    :goto_bb
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

    goto :goto_f0

    .line 103
    :goto_d6
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

    .line 108
    :goto_f0
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

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mLandmarkerListener:Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 152
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    if-eqz v0, :cond_12

    .line 154
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->close()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerHelper;->mHandLandmarker:Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarker;

    :cond_12
    return-void
.end method
