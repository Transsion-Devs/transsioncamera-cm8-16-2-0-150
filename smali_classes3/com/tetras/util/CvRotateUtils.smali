.class public Lcom/tetras/util/CvRotateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateKeyPoints(Landroid/graphics/PointF;IIZ)Landroid/graphics/PointF;
    .registers 5

    const/16 v0, 0x5a

    .line 141
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tetras/util/CvRotateUtils;->rotateKeyPoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static rotateKeyPoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;
    .registers 6

    if-eqz p4, :cond_3e

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2d

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_1e

    const/16 p2, 0x10e

    if-eq p4, p2, :cond_f

    goto :goto_46

    .line 126
    :cond_f
    iget p2, p0, Landroid/graphics/PointF;->y:F

    .line 127
    iget p4, p0, Landroid/graphics/PointF;->x:F

    iput p4, p0, Landroid/graphics/PointF;->y:F

    .line 128
    iput p2, p0, Landroid/graphics/PointF;->x:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 130
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_1e
    int-to-float p2, p2

    .line 120
    iget p4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p4

    iput p2, p0, Landroid/graphics/PointF;->y:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    .line 122
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    return-object p0

    .line 112
    :cond_2d
    iget p4, p0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    .line 113
    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->x:F

    .line 114
    iput p4, p0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 116
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_3e
    if-eqz p3, :cond_46

    int-to-float p1, p1

    .line 108
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_46
    :goto_46
    return-object p0
.end method

.method public static rotateRect(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .registers 5

    const/16 v0, 0x5a

    .line 86
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tetras/util/CvRotateUtils;->rotateRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static rotateRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;
    .registers 8

    if-eqz p4, :cond_66

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_49

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_30

    const/16 v0, 0x10e

    if-eq p4, v0, :cond_f

    goto :goto_73

    .line 62
    :cond_f
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 63
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    .line 64
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 66
    iput p4, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 69
    iput v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    .line 70
    iput p2, p0, Landroid/graphics/Rect;->right:I

    if-nez p3, :cond_73

    sub-int p2, p1, v1

    .line 74
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 75
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    .line 52
    :cond_30
    iget p4, p0, Landroid/graphics/Rect;->top:I

    sub-int p4, p2, p4

    iput p4, p0, Landroid/graphics/Rect;->top:I

    .line 53
    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    if-nez p3, :cond_73

    .line 56
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 57
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-object p0

    .line 38
    :cond_49
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 39
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 40
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 41
    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 42
    iput p4, p0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_73

    sub-int p2, p1, v0

    .line 46
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 47
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    :cond_66
    if-eqz p3, :cond_73

    .line 32
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 33
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_73
    :goto_73
    return-object p0
.end method
