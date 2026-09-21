.class final Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;
.super Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;
.source "SourceFile"


# instance fields
.field private final stylizedImage:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampMs:J


# direct methods
.method constructor <init>(Ljava/util/Optional;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;J)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;-><init>()V

    if-eqz p1, :cond_a

    .line 19
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->stylizedImage:Ljava/util/Optional;

    .line 20
    iput-wide p2, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->timestampMs:J

    return-void

    .line 17
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null stylizedImage"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 46
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 47
    check-cast p1, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;

    .line 48
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->stylizedImage:Ljava/util/Optional;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;->stylizedImage()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->timestampMs:J

    .line 49
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;->timestampMs()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_22

    return v0

    :cond_22
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->stylizedImage:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 60
    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->timestampMs:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public stylizedImage()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->stylizedImage:Ljava/util/Optional;

    return-object p0
.end method

.method public timestampMs()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceStylizerResult{stylizedImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->stylizedImage:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
