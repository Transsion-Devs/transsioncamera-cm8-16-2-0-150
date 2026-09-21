.class public Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentDelegate:I

.field private mMaxNumHands:I

.field private mMinHandDetectionConfidence:F

.field private mMinHandPresenceConfidence:F

.field private mMinHandTrackingConfidence:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentDelegate(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mCurrentDelegate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxNumHands(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMaxNumHands:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinHandDetectionConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandDetectionConfidence:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinHandPresenceConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandPresenceConfidence:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinHandTrackingConfidence(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandTrackingConfidence:F

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 77
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandDetectionConfidence:F

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandTrackingConfidence:F

    .line 79
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandPresenceConfidence:F

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMaxNumHands:I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mCurrentDelegate:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;
    .registers 3

    .line 110
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam-IA;)V

    return-object v0
.end method

.method public currentDelegate(I)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    .registers 2

    .line 105
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mCurrentDelegate:I

    return-object p0
.end method

.method public maxNumHands(I)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    .registers 2

    .line 100
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMaxNumHands:I

    return-object p0
.end method

.method public minHandDetectionConfidence(F)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    .registers 2

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandDetectionConfidence:F

    return-object p0
.end method

.method public minHandPresenceConfidence(F)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    .registers 2

    .line 95
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandPresenceConfidence:F

    return-object p0
.end method

.method public minHandTrackingConfidence(F)Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;
    .registers 2

    .line 90
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam$Builder;->mMinHandTrackingConfidence:F

    return-object p0
.end method
