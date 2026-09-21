.class public abstract Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;J)Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;
    .registers 4

    .line 34
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imageclassifier/AutoValue_ImageClassifierResult;-><init>(Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;J)V

    return-object v0
.end method

.method static createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;J)Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;
    .registers 3

    .line 47
    invoke-static {p0}, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;->createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;)Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;->create(Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;J)Lcom/google/mediapipe/tasks/vision/imageclassifier/ImageClassifierResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract classificationResult()Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
.end method

.method public abstract timestampMs()J
.end method
