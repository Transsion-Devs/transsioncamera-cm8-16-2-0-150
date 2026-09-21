.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;
.super Lcom/google/mediapipe/tasks/components/containers/Embedding;
.source "SourceFile"


# instance fields
.field private final floatEmbedding:[F

.field private final headIndex:I

.field private final headName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final quantizedEmbedding:[B


# direct methods
.method constructor <init>([F[BILjava/util/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[BI",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;-><init>()V

    if-eqz p1, :cond_22

    .line 25
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    if-eqz p2, :cond_1a

    .line 29
    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    .line 30
    iput p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    if-eqz p4, :cond_12

    .line 34
    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    return-void

    .line 32
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null headName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null quantizedEmbedding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null floatEmbedding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Embedding;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 73
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Embedding;

    .line 74
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    instance-of v3, p1, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    if-eqz v3, :cond_17

    move-object v4, p1

    check-cast v4, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    iget-object v4, v4, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object v4

    :goto_1b
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    if-eqz v3, :cond_2b

    .line 75
    move-object v3, p1

    check-cast v3, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    iget-object v3, v3, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    goto :goto_2f

    :cond_2b
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object v3

    :goto_2f
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->headIndex()I

    move-result v3

    if-ne v1, v3, :cond_4a

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->headName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    return v0

    :cond_4a
    return v2
.end method

.method public floatEmbedding()[F
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 88
    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 90
    iget v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 92
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public headIndex()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    return p0
.end method

.method public headName()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    return-object p0
.end method

.method public quantizedEmbedding()[B
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Embedding{floatEmbedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantizedEmbedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
