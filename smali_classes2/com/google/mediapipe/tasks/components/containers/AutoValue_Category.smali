.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;
.super Lcom/google/mediapipe/tasks/components/containers/Category;
.source "SourceFile"


# instance fields
.field private final categoryName:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final index:I

.field private final score:F


# direct methods
.method constructor <init>(FILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Category;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->score:F

    .line 20
    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->index:I

    if-eqz p3, :cond_18

    .line 24
    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->categoryName:Ljava/lang/String;

    if-eqz p4, :cond_10

    .line 28
    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->displayName:Ljava/lang/String;

    return-void

    .line 26
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null displayName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null categoryName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public categoryName()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->categoryName:Ljava/lang/String;

    return-object p0
.end method

.method public displayName()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public index()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->index:I

    return p0
.end method

.method public score()F
    .registers 1

    .line 33
    iget p0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->score:F

    return p0
.end method
