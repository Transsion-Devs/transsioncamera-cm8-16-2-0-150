.class public abstract Lcom/google/mediapipe/tasks/vision/imageembedder/ImageEmbedderResult;
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

.method static create(Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;J)Lcom/google/mediapipe/tasks/vision/imageembedder/ImageEmbedderResult;
    .registers 4

    .line 34
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imageembedder/AutoValue_ImageEmbedderResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imageembedder/AutoValue_ImageEmbedderResult;-><init>(Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;J)V

    return-object v0
.end method

.method static createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;J)Lcom/google/mediapipe/tasks/vision/imageembedder/ImageEmbedderResult;
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;->createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imageembedder/ImageEmbedderResult;->create(Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;J)Lcom/google/mediapipe/tasks/vision/imageembedder/ImageEmbedderResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract embeddingResult()Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;
.end method

.method public abstract timestampMs()J
.end method
