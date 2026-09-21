.class public Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_HAND_DETECTION_CONFIDENCE:F = 0.5f

.field public static final DEFAULT_HAND_PRESENCE_CONFIDENCE:F = 0.5f

.field public static final DEFAULT_HAND_TRACKING_CONFIDENCE:F = 0.5f

.field public static final DEFAULT_NUM_HANDS:I = 0x1

.field public static final DELEGATE_CPU:I = 0x0

.field public static final DELEGATE_GPU:I = 0x1


# instance fields
.field private final mCurrentDelegate:I

.field private final mMaxNumHands:I

.field private final mMinHandDetectionConfidence:F

.field private final mMinHandPresenceConfidence:F

.field private final mMinHandTrackingConfidence:F


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->-$$Nest$fgetmMinHandDetectionConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandDetectionConfidence:F

    .line 37
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->-$$Nest$fgetmMinHandTrackingConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandTrackingConfidence:F

    .line 38
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->-$$Nest$fgetmMinHandPresenceConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandPresenceConfidence:F

    .line 39
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->-$$Nest$fgetmMaxNumHands(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMaxNumHands:I

    .line 40
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->-$$Nest$fgetmCurrentDelegate(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mCurrentDelegate:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)V

    return-void
.end method


# virtual methods
.method public currentDelegate()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mCurrentDelegate:I

    return p0
.end method

.method public maxNumHands()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMaxNumHands:I

    return p0
.end method

.method public minHandDetectionConfidence()F
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandDetectionConfidence:F

    return p0
.end method

.method public minHandPresenceConfidence()F
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandPresenceConfidence:F

    return p0
.end method

.method public minHandTrackingConfidence()F
    .registers 1

    .line 48
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandTrackingConfidence:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandLandmarkerParam{mMinHandDetectionConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandDetectionConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinHandTrackingConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandTrackingConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinHandPresenceConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMinHandPresenceConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxNumHands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mMaxNumHands:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;->mCurrentDelegate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
