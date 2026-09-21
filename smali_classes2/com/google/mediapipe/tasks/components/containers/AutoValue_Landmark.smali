.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;
.super Lcom/google/mediapipe/tasks/components/containers/Landmark;
.source "SourceFile"


# instance fields
.field private final presence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final visibility:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method constructor <init>(FFFLjava/util/Optional;Ljava/util/Optional;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Landmark;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->x:F

    .line 25
    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->y:F

    .line 26
    iput p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->z:F

    if-eqz p4, :cond_1a

    .line 30
    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->visibility:Ljava/util/Optional;

    if-eqz p5, :cond_12

    .line 34
    iput-object p5, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->presence:Ljava/util/Optional;

    return-void

    .line 32
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null presence"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null visibility"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public presence()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->presence:Ljava/util/Optional;

    return-object p0
.end method

.method public visibility()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->visibility:Ljava/util/Optional;

    return-object p0
.end method

.method public x()F
    .registers 1

    .line 39
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->x:F

    return p0
.end method

.method public y()F
    .registers 1

    .line 44
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->y:F

    return p0
.end method

.method public z()F
    .registers 1

    .line 49
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->z:F

    return p0
.end method
