.class final Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;
.super Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;
.source "SourceFile"


# instance fields
.field private final detections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Detection;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampMs:J


# direct methods
.method constructor <init>(JLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Detection;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->timestampMs:J

    if-eqz p3, :cond_a

    .line 20
    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->detections:Ljava/util/List;

    return-void

    .line 18
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null detections"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public detections()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Detection;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->detections:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 46
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 47
    check-cast p1, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;

    .line 48
    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->timestampMs:J

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectionResult;->timestampMs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_22

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->detections:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectionResult;->detections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    return v0

    :cond_22
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 58
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->timestampMs:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 60
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->detections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public timestampMs()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectDetectorResult{timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", detections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetectorResult;->detections:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
