.class public Lcom/singleblur/faceapi/evaluate/FaceEvaluation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceEvaluation"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceQuality(Lcom/singleblur/faceapi/model/FaceInfo;IIIF)F
    .registers 17

    .line 14
    iget-object v0, p0, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 15
    iget-object p1, p0, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, p2

    div-float/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_20

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2d

    :cond_20
    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_29

    const/4 p1, 0x0

    goto :goto_2d

    :cond_29
    sub-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    .line 24
    :goto_2d
    iget v0, p0, Lcom/singleblur/faceapi/model/FaceInfo;->score:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/singleblur/faceapi/model/FaceInfo;->yaw:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v2, v8, v2

    const-wide v10, 0x3fc3333340000000L    # 0.15000000596046448

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    iget p0, p0, Lcom/singleblur/faceapi/model/FaceInfo;->pitch:F

    float-to-double v2, p0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v8, v2

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    double-to-float p0, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    const p1, 0x3e4ccccd    # 0.2f

    int-to-float v0, p3

    div-float/2addr p1, v0

    add-float/2addr p0, p1

    const p1, 0x3e19999a    # 0.15f

    mul-float p1, p1, p4

    add-float/2addr p0, p1

    return p0
.end method
