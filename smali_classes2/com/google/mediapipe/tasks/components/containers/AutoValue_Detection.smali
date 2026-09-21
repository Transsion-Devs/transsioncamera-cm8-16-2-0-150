.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;
.super Lcom/google/mediapipe/tasks/components/containers/Detection;
.source "SourceFile"


# instance fields
.field private final boundingBox:Landroid/graphics/RectF;

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final keypoints:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/Optional;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;",
            "Landroid/graphics/RectF;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Detection;-><init>()V

    if-eqz p1, :cond_20

    .line 23
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    if-eqz p2, :cond_18

    .line 27
    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    if-eqz p3, :cond_10

    .line 31
    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    return-void

    .line 29
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null keypoints"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null boundingBox"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null categories"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public boundingBox()Landroid/graphics/RectF;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    return-object p0
.end method

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

    .line 36
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Detection;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 64
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Detection;

    .line 65
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->categories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->boundingBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    .line 67
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->keypoints()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    return v0

    :cond_30
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 78
    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 80
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public keypoints()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detection{categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
