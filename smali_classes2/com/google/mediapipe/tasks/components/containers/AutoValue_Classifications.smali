.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;
.super Lcom/google/mediapipe/tasks/components/containers/Classifications;
.source "SourceFile"


# instance fields
.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Ljava/util/List;ILjava/util/Optional;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;I",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Classifications;-><init>()V

    if-eqz p1, :cond_16

    .line 22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->categories:Ljava/util/List;

    .line 23
    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headIndex:I

    if-eqz p3, :cond_e

    .line 27
    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headName:Ljava/util/Optional;

    return-void

    .line 25
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null headName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null categories"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public categories()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->categories:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Classifications;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 60
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Classifications;

    .line 61
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->categories:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Classifications;->categories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headIndex:I

    .line 62
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Classifications;->headIndex()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headName:Ljava/util/Optional;

    .line 63
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Classifications;->headName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 74
    iget v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headIndex:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 76
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headName:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public headIndex()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headIndex:I

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

    .line 42
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headName:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Classifications{categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;->headName:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
