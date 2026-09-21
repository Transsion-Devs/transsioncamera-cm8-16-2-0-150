.class public Lcom/ss/android/medialib/camera/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIMEN_COEFFICIENT:F = 1.2f

.field private static final RATIO_COEFFICIENT:F = 1000.0f

.field private static final TAG:Ljava/lang/String; = "CameraUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTapArea(Landroid/view/View;[FFI)Landroid/graphics/Rect;
    .registers 9

    const/4 v0, 0x0

    .line 30
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 31
    aget p1, p1, v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->dip2Px(Landroid/content/Context;F)F

    move-result v1

    mul-float/2addr v1, p2

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v0, v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x3e8

    sub-int/2addr v0, v2

    mul-float/2addr p1, v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-int p0, p1

    sub-int/2addr p0, v2

    .line 36
    div-int/lit8 p1, p2, 0x2

    sub-int/2addr v0, p1

    const/16 v1, -0x3e8

    invoke-static {v0, v1, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result v0

    sub-int/2addr p0, p1

    .line 37
    invoke-static {p0, v1, v2}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result p0

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, p0

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result v0

    int-to-float v0, v0

    add-int/2addr p0, p2

    invoke-static {p0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p1, v3, v4, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    new-instance p0, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    invoke-static {p3, p1, p0}, Lcom/ss/android/medialib/util/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iget p3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    invoke-direct {p1, p2, p3, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 44
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 45
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 46
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method public static clamp(I)I
    .registers 3

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    .line 57
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/camera/CameraUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .registers 3

    .line 0
    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private static diff(FFFF)F
    .registers 7

    mul-float v0, p2, p3

    mul-float v1, p0, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_b
    const v0, 0x3f99999a    # 1.2f

    :goto_e
    div-float v1, p0, p1

    div-float v2, p2, p3

    sub-float/2addr v1, v2

    .line 197
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    sub-float/2addr p0, p2

    .line 198
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p0, p1

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public static dip2Px(Landroid/content/Context;F)F
    .registers 2

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method public static getBestMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            "FF)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_71

    .line 126
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_71

    :cond_a
    if-eqz p1, :cond_71

    .line 127
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_71

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gtz p1, :cond_15

    goto :goto_71

    :cond_15
    const/4 p1, 0x0

    cmpg-float v1, p2, p1

    if-lez v1, :cond_71

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_1f

    goto :goto_71

    .line 131
    :cond_1f
    new-instance p1, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 132
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 133
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_50

    goto :goto_2c

    .line 134
    :cond_50
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-static {p2, p3, v3, v4}, Lcom/ss/android/medialib/camera/CameraUtils;->diff(FFFF)F

    move-result v3

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2c

    .line 136
    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 137
    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    move v1, v3

    goto :goto_2c

    .line 142
    :cond_68
    iget p0, p1, Landroid/graphics/Point;->x:I

    if-lez p0, :cond_71

    iget p0, p1, Landroid/graphics/Point;->y:I

    if-lez p0, :cond_71

    return-object p1

    :cond_71
    :goto_71
    return-object v0
.end method

.method private static getBestMatchSizes(Ljava/util/List;IILjava/util/List;II)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {p0, p1, p2}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewMatchSize(Ljava/util/List;II)Landroid/graphics/Point;

    move-result-object p0

    int-to-float p1, p4

    .line 173
    iget p2, p0, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    iget p4, p0, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 174
    invoke-static {p3, p0, p1, p2}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    .line 175
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static getBestPictureMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            "FF)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 158
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 159
    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 161
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSize(Ljava/util/List;Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_15

    return-object p1

    :cond_15
    float-to-int p1, p2

    float-to-int p2, p3

    .line 168
    invoke-static {p0, p1, p2}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestPreviewMatchSize(Ljava/util/List;II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object v0
.end method

.method public static getBestPreviewByPictureMatchSize(Ljava/util/List;IILjava/util/List;II)Landroid/graphics/Point;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    if-eqz p0, :cond_48

    if-nez p3, :cond_5

    goto :goto_48

    .line 181
    :cond_5
    invoke-static/range {p0 .. p5}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSizes(Ljava/util/List;IILjava/util/List;II)Landroid/util/Pair;

    move-result-object p2

    .line 182
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_26

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x9

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x10

    if-eq v1, v0, :cond_26

    mul-int/lit8 p2, p1, 0x9

    .line 183
    div-int/lit8 p2, p2, 0x10

    invoke-static/range {p0 .. p5}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSizes(Ljava/util/List;IILjava/util/List;II)Landroid/util/Pair;

    move-result-object p2

    .line 186
    :cond_26
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_43

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x4

    if-eq v1, v0, :cond_43

    mul-int/lit8 p2, p1, 0x3

    .line 187
    div-int/lit8 p2, p2, 0x4

    invoke-static/range {p0 .. p5}, Lcom/ss/android/medialib/camera/CameraUtils;->getBestMatchSizes(Ljava/util/List;IILjava/util/List;II)Landroid/util/Pair;

    move-result-object p2

    .line 190
    :cond_43
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    return-object p0

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBestPreviewMatchSize(Ljava/util/List;II)Landroid/graphics/Point;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;II)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_61

    .line 89
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_61

    :cond_a
    if-lez p1, :cond_61

    if-gtz p2, :cond_f

    goto :goto_61

    .line 91
    :cond_f
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 96
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 97
    iget v5, v3, Landroid/graphics/Point;->y:I

    if-ne v4, p1, :cond_31

    if-ne v5, p2, :cond_31

    return-object v3

    :cond_31
    int-to-float v3, p1

    int-to-float v6, p2

    int-to-float v7, v4

    int-to-float v8, v5

    .line 102
    invoke-static {v3, v6, v7, v8}, Lcom/ss/android/medialib/camera/CameraUtils;->diff(FFFF)F

    move-result v3

    cmpg-float v6, v3, v2

    if-gez v6, :cond_1c

    .line 104
    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 105
    iput v5, v0, Landroid/graphics/Point;->y:I

    move v2, v3

    goto :goto_1c

    .line 110
    :cond_43
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-lez p1, :cond_4c

    iget p1, v0, Landroid/graphics/Point;->y:I

    if-lez p1, :cond_4c

    return-object v0

    .line 114
    :cond_4c
    new-instance p1, Lcom/ss/android/medialib/camera/CameraUtils$2;

    invoke-direct {p1}, Lcom/ss/android/medialib/camera/CameraUtils$2;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0

    :cond_61
    :goto_61
    return-object v0
.end method

.method public static getClosestFpsRange([ILjava/util/List;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/ss/android/medialib/camera/CameraUtils$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/CameraUtils$1;-><init>([I)V

    .line 85
    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method
