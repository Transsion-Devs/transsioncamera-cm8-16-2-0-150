.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;
.super Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;
.source "SourceFile"


# instance fields
.field private final embeddings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Embedding;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampMs:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Optional;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Embedding;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;-><init>()V

    if-eqz p1, :cond_14

    .line 19
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->embeddings:Ljava/util/List;

    if-eqz p2, :cond_c

    .line 23
    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->timestampMs:Ljava/util/Optional;

    return-void

    .line 21
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null timestampMs"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null embeddings"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public embeddings()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Embedding;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->embeddings:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 50
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;

    .line 51
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->embeddings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;->embeddings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->timestampMs:Ljava/util/Optional;

    .line 52
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/EmbeddingResult;->timestampMs()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->embeddings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 63
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->timestampMs:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public timestampMs()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->timestampMs:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmbeddingResult{embeddings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->embeddings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_EmbeddingResult;->timestampMs:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
