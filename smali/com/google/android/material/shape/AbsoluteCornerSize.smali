.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 52
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 53
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    iget p1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_15

    return v0

    :cond_15
    return v2
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 2

    .line 34
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
