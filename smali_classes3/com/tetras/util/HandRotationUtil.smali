.class public Lcom/tetras/util/HandRotationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateFaceInfo(Lcom/tetras/hand/model/CvHandInfo;IIZI)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 47
    :cond_3
    iget-object p0, p0, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tetras/util/HandRotationUtil;->rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;

    return-void
.end method

.method public static rotateFaceInfos([Lcom/tetras/hand/model/CvHandInfo;IIZI)V
    .registers 8

    if-eqz p0, :cond_12

    .line 26
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_12

    .line 29
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 30
    invoke-static {v2, p1, p2, p3, p4}, Lcom/tetras/util/HandRotationUtil;->rotateFaceInfo(Lcom/tetras/hand/model/CvHandInfo;IIZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    :goto_12
    return-void
.end method

.method public static rotateFaceRect(Landroid/graphics/Rect;IIZI)Landroid/graphics/Rect;
    .registers 8

    if-eqz p4, :cond_6d

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_49

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_30

    const/16 v0, 0x10e

    if-eq p4, v0, :cond_f

    goto :goto_7a

    .line 96
    :cond_f
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 97
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    .line 98
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 99
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 100
    iput p4, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    .line 103
    iput v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    .line 104
    iput p2, p0, Landroid/graphics/Rect;->right:I

    if-nez p3, :cond_7a

    sub-int p2, p1, v1

    .line 108
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 109
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    .line 86
    :cond_30
    iget p4, p0, Landroid/graphics/Rect;->top:I

    sub-int p4, p2, p4

    iput p4, p0, Landroid/graphics/Rect;->top:I

    .line 87
    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    if-nez p3, :cond_7a

    .line 90
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 91
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-object p0

    .line 70
    :cond_49
    const-string p4, "ori"

    const-string v0, "run 90"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget p4, p0, Landroid/graphics/Rect;->left:I

    .line 73
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 74
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 76
    iput p4, p0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_7a

    sub-int p2, p1, v0

    .line 80
    iput p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 81
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    :cond_6d
    if-eqz p3, :cond_7a

    .line 65
    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 66
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_7a
    :goto_7a
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

    .line 150
    :cond_f
    iget p2, p0, Landroid/graphics/PointF;->y:F

    .line 151
    iget p4, p0, Landroid/graphics/PointF;->x:F

    iput p4, p0, Landroid/graphics/PointF;->y:F

    .line 152
    iput p2, p0, Landroid/graphics/PointF;->x:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 154
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_1e
    int-to-float p2, p2

    .line 144
    iget p4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p4

    iput p2, p0, Landroid/graphics/PointF;->y:F

    if-nez p3, :cond_46

    int-to-float p1, p1

    .line 146
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    return-object p0

    .line 136
    :cond_2d
    iget p4, p0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    .line 137
    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->x:F

    .line 138
    iput p4, p0, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_46

    int-to-float p1, p1

    sub-float/2addr p1, p4

    .line 140
    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_3e
    if-eqz p3, :cond_46

    int-to-float p1, p1

    .line 132
    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_46
    :goto_46
    return-object p0
.end method
