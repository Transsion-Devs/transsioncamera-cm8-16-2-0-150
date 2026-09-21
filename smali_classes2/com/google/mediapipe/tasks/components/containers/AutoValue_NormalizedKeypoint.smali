.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;
.super Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;
.source "SourceFile"


# instance fields
.field private final label:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final score:Ljava/util/Optional;
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


# direct methods
.method constructor <init>(FFLjava/util/Optional;Ljava/util/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->x:F

    .line 22
    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->y:F

    if-eqz p3, :cond_18

    .line 26
    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->label:Ljava/util/Optional;

    if-eqz p4, :cond_10

    .line 30
    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->score:Ljava/util/Optional;

    return-void

    .line 28
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null score"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null label"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public label()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->label:Ljava/util/Optional;

    return-object p0
.end method

.method public score()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->score:Ljava/util/Optional;

    return-object p0
.end method

.method public x()F
    .registers 1

    .line 35
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->x:F

    return p0
.end method

.method public y()F
    .registers 1

    .line 40
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->y:F

    return p0
.end method
