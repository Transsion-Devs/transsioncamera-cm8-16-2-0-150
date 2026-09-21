.class public abstract Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;
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

.method public static create(Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;J)",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/facestylizer/AutoValue_FaceStylizerResult;-><init>(Ljava/util/Optional;J)V

    return-object v0
.end method


# virtual methods
.method public abstract stylizedImage()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract timestampMs()J
.end method
