.class public abstract Lcom/transsion/camera/utils/CoordinatesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REFERENCE_RECT:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public static getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 7

    if-eqz p0, :cond_72

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_14

    goto :goto_72

    .line 189
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v1, v0, p1

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_4c

    .line 192
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 193
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 194
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_4c
    sub-float v0, p1, v0

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_71

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 198
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    .line 199
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_71
    return-object p0

    :cond_72
    :goto_72
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;
    .registers 5

    .line 145
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 146
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_17

    const/high16 p1, -0x40800000    # -1.0f

    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 150
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_20

    .line 152
    :cond_17
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    rsub-int p1, p2, 0x168

    int-to-float p1, p1

    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    :goto_20
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 157
    sget-object p2, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, p0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 158
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private static getSensorToPreviewMatrix(Landroid/graphics/Rect;II)Landroid/graphics/Matrix;
    .registers 6

    .line 165
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 166
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 168
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p0, v1, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-object v0
.end method

.method private static getViewToReferenceMatrix(II)Landroid/graphics/Matrix;
    .registers 5

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p0, p0

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 131
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    sget-object v1, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 138
    invoke-virtual {p0, p1, p0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object p0
.end method

.method private static inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 2

    .line 173
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 41
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 42
    invoke-static {p3, p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;

    move-result-object p1

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 44
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 45
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 3

    .line 71
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getViewToReferenceMatrix(II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 74
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 75
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 76
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 77
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static sensorToPreviewSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 4

    .line 82
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->getSensorToPreviewMatrix(Landroid/graphics/Rect;II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 84
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 85
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 86
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 87
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 50
    invoke-static {p3, p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 53
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 54
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 55
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 56
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static viewToReferenceSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 3

    .line 31
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getViewToReferenceMatrix(II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 32
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 34
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 36
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
