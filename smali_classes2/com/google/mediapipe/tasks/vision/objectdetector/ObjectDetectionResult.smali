.class public abstract Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;J)Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectionResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;J)",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectionResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;->create(Ljava/util/List;J)Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract detections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Detection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract timestampMs()J
.end method
