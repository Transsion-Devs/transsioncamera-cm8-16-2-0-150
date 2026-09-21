.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;
.super Lcom/google/mediapipe/tasks/components/containers/Connection;
.source "SourceFile"


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Connection;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    .line 14
    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    return-void
.end method


# virtual methods
.method public end()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 41
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Connection;

    .line 42
    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->start()I

    move-result v3

    if-ne v1, v3, :cond_1c

    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    .line 43
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Connection;->end()I

    move-result p1

    if-ne p0, p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 52
    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 54
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public start()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Connection;->end:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
