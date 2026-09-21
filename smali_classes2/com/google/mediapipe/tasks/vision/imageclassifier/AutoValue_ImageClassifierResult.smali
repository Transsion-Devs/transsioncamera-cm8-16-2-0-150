.class final Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;
.super Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;
.source "SourceFile"


# instance fields
.field private final classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

.field private final timestampMs:J


# direct methods
.method constructor <init>(Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;J)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;-><init>()V

    if-eqz p1, :cond_a

    .line 18
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    .line 19
    iput-wide p2, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->timestampMs:J

    return-void

    .line 16
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null classificationResult"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public classificationResult()Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 45
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 46
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;

    .line 47
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;->classificationResult()Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->timestampMs:J

    .line 48
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;->timestampMs()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_22

    return v0

    :cond_22
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 59
    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->timestampMs:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public timestampMs()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageClassifierResult{classificationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->classificationResult:Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
