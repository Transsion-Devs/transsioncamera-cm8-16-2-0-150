.class public final Landroidx/window/core/Bounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroidx/window/core/Bounds;->left:I

    .line 32
    iput p2, p0, Landroidx/window/core/Bounds;->top:I

    .line 33
    iput p3, p0, Landroidx/window/core/Bounds;->right:I

    .line 34
    iput p4, p0, Landroidx/window/core/Bounds;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/window/core/Bounds;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Landroidx/window/core/Bounds;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    if-eqz p1, :cond_37

    .line 75
    check-cast p1, Landroidx/window/core/Bounds;

    .line 77
    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    iget v3, p1, Landroidx/window/core/Bounds;->left:I

    if-eq v1, v3, :cond_21

    return v2

    .line 78
    :cond_21
    iget v1, p0, Landroidx/window/core/Bounds;->top:I

    iget v3, p1, Landroidx/window/core/Bounds;->top:I

    if-eq v1, v3, :cond_28

    return v2

    .line 79
    :cond_28
    iget v1, p0, Landroidx/window/core/Bounds;->right:I

    iget v3, p1, Landroidx/window/core/Bounds;->right:I

    if-eq v1, v3, :cond_2f

    return v2

    .line 80
    :cond_2f
    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    iget p1, p1, Landroidx/window/core/Bounds;->bottom:I

    if-eq p0, p1, :cond_36

    return v2

    :cond_36
    return v0

    .line 75
    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type androidx.window.core.Bounds"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBottom()I
    .registers 1

    .line 34
    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    return p0
.end method

.method public final getHeight()I
    .registers 2

    .line 53
    iget v0, p0, Landroidx/window/core/Bounds;->bottom:I

    iget p0, p0, Landroidx/window/core/Bounds;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .registers 1

    .line 31
    iget p0, p0, Landroidx/window/core/Bounds;->left:I

    return p0
.end method

.method public final getRight()I
    .registers 1

    .line 33
    iget p0, p0, Landroidx/window/core/Bounds;->right:I

    return p0
.end method

.method public final getTop()I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/window/core/Bounds;->top:I

    return p0
.end method

.method public final getWidth()I
    .registers 2

    .line 47
    iget v0, p0, Landroidx/window/core/Bounds;->right:I

    iget p0, p0, Landroidx/window/core/Bounds;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 86
    iget v0, p0, Landroidx/window/core/Bounds;->left:I

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget v1, p0, Landroidx/window/core/Bounds;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget v1, p0, Landroidx/window/core/Bounds;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getWidth()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final isZero()Z
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getWidth()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final toRect()Landroid/graphics/Rect;
    .registers 5

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    iget v2, p0, Landroidx/window/core/Bounds;->top:I

    iget v3, p0, Landroidx/window/core/Bounds;->right:I

    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/core/Bounds;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/window/core/Bounds;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/window/core/Bounds;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
