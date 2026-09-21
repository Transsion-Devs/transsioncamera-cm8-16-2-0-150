.class public Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInferenceTime:J

.field private final mInputImageHeight:I

.field private final mInputImageWidth:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;JII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;",
            ">;JII)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mResults:Ljava/util/List;

    .line 33
    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInferenceTime:J

    .line 34
    iput p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInputImageWidth:I

    .line 35
    iput p5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInputImageHeight:I

    return-void
.end method


# virtual methods
.method public getInferenceTime()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInferenceTime:J

    return-wide v0
.end method

.method public getInputImageHeight()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInputImageHeight:I

    return p0
.end method

.method public getInputImageWidth()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mInputImageWidth:I

    return p0
.end method

.method public getResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->mResults:Ljava/util/List;

    return-object p0
.end method
