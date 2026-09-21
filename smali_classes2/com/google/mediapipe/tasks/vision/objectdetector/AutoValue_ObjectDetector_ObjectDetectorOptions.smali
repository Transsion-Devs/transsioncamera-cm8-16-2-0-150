.class final Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;
.super Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions$Builder;
    }
.end annotation


# instance fields
.field private final baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final categoryAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryDenylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final displayNamesLocale:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final maxResults:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resultListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

.field private final scoreThreshold:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/BaseOptions;",
            "Lcom/google/mediapipe/tasks/vision/core/RunningMode;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 43
    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 44
    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->displayNamesLocale:Ljava/util/Optional;

    .line 45
    iput-object p4, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->maxResults:Ljava/util/Optional;

    .line 46
    iput-object p5, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->scoreThreshold:Ljava/util/Optional;

    .line 47
    iput-object p6, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryAllowlist:Ljava/util/List;

    .line 48
    iput-object p7, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryDenylist:Ljava/util/List;

    .line 49
    iput-object p8, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->resultListener:Ljava/util/Optional;

    .line 50
    iput-object p9, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->errorListener:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions$1;)V
    .registers 11

    .line 12
    invoke-direct/range {p0 .. p9}, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0
.end method

.method categoryAllowlist()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryAllowlist:Ljava/util/List;

    return-object p0
.end method

.method categoryDenylist()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryDenylist:Ljava/util/List;

    return-object p0
.end method

.method displayNamesLocale()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->displayNamesLocale:Ljava/util/Optional;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 120
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    .line 121
    check-cast p1, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;

    .line 122
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 123
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->displayNamesLocale:Ljava/util/Optional;

    .line 124
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->displayNamesLocale()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->maxResults:Ljava/util/Optional;

    .line 125
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->maxResults()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->scoreThreshold:Ljava/util/Optional;

    .line 126
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->scoreThreshold()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryAllowlist:Ljava/util/List;

    .line 127
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->categoryAllowlist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryDenylist:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->categoryDenylist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->resultListener:Ljava/util/Optional;

    .line 129
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->resultListener()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->errorListener:Ljava/util/Optional;

    .line 130
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetector$ObjectDetectorOptions;->errorListener()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    return v0

    :cond_78
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

    .line 97
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->errorListener:Ljava/util/Optional;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 141
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 143
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->displayNamesLocale:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 145
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->maxResults:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 147
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->scoreThreshold:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 149
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryAllowlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 151
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryDenylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 153
    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 155
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method maxResults()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->maxResults:Ljava/util/Optional;

    return-object p0
.end method

.method resultListener()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/ObjectDetectorResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->resultListener:Ljava/util/Optional;

    return-object p0
.end method

.method runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object p0
.end method

.method scoreThreshold()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->scoreThreshold:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectDetectorOptions{baseOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runningMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayNamesLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->displayNamesLocale:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->maxResults:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scoreThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->scoreThreshold:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryAllowlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryAllowlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryDenylist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->categoryDenylist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/AutoValue_ObjectDetector_ObjectDetectorOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
