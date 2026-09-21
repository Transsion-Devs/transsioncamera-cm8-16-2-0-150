.class final Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;
.super Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions$Builder;
    }
.end annotation


# instance fields
.field private final baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final resultListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/BaseOptions;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 23
    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->resultListener:Ljava/util/Optional;

    .line 24
    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->errorListener:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions$1;)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 56
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 57
    check-cast p1, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;

    .line 58
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->resultListener:Ljava/util/Optional;

    .line 59
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;->resultListener()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->errorListener:Ljava/util/Optional;

    .line 60
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;->errorListener()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    return v0

    :cond_30
    return v2
.end method

.method errorListener()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->errorListener:Ljava/util/Optional;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 71
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 73
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method resultListener()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->resultListener:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceStylizerOptions{baseOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizer_FaceStylizerOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
