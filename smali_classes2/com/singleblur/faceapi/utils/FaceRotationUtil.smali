.class public Lcom/singleblur/faceapi/utils/FaceRotationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateFaceInfo(Lcom/singleblur/faceapi/model/FaceInfo;IIZI)V
    .registers 7

    if-nez p0, :cond_3

    goto :goto_16

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/singleblur/faceapi/utils/FaceRotationUtil;->rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;

    .line 46
    iget-object p0, p0, Lcom/singleblur/faceapi/model/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 47
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_16

    .line 48
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/singleblur/faceapi/utils/FaceRotationUtil;->rotatePoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    :goto_16
    return-void
.end method

.method public static rotateFaceInfos([Lcom/singleblur/faceapi/model/FaceInfo;IIZI)V
    .registers 8

    if-eqz p0, :cond_12

    .line 24
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_12

    .line 27
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 28
    invoke-static {v2, p1, p2, p3, p4}, Lcom/singleblur/faceapi/utils/FaceRotationUtil;->rotateFaceInfo(Lcom/singleblur/faceapi/model/FaceInfo;IIZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    :goto_12
    return-void
.end method

.method public static rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;
    .registers 8

    if-eqz p4, :cond_66

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_49

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_30

    const/16 v0, 0x10e

    if-eq p4, v0, :cond_f

    goto :goto_73

    .line 97
    :cond_f
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 98
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    .line 99
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 100
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 101
    iput p4, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 104
    iput v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    .line 105
    iput p2, p0, Landroid/graphics/Rect;->right:I

    if-nez p3, :cond_73

    sub-int p2, p1, v1

    .line 109
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 110
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    .line 87
    :cond_30
    iget p4, p0, Landroid/graphics/Rect;->top:I

    sub-int p4, p2, p4

    iput p4, p0, Landroid/graphics/Rect;->top:I

    .line 88
    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    if-nez p3, :cond_73

    .line 91
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 92
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-object p0

    .line 73
    :cond_49
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 74
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 75
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 76
    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 77
    iput p4, p0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_73

    sub-int p2, p1, v0

    .line 81
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 82
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    :cond_66
    if-eqz p3, :cond_73

    .line 67
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 68
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_73
    :goto_73
    return-object p0
.end method

.method public static rotatePoints(Landroid/graphics/PointF;IIZI)Landroid/graphics/PointF;
    .registers 6

    if-eqz p4, :cond_3e

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2d

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_1e

    const/16 p2, 0x10e

    if-eq p4, p2, :cond_f

    goto :goto_46

    .line 152
    :cond_f
    iget p2, p0, Landroid/graphics/PointF;->y:F

    .line 153
    iget p4, p0, Landroid/graphics/PointF;->x:F

    iput p4, p0, Landroid/graphics/PointF;->y:F

    .line 154
    iput p2, p0, Landroid/graphics/PointF;->x:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 156
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_1e
    int-to-float p2, p2

    .line 146
    iget p4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p4

    iput p2, p0, Landroid/graphics/PointF;->y:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    .line 148
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    return-object p0

    .line 138
    :cond_2d
    iget p4, p0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    .line 139
    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->x:F

    .line 140
    iput p4, p0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 142
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_3e
    if-eqz p3, :cond_46

    int-to-float p1, p1

    .line 134
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_46
    :goto_46
    return-object p0
.end method
