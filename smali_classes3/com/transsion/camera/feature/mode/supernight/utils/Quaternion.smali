.class public Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    .line 12
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    .line 13
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-void
.end method

.method public static lerp(Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;F)Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;
    .registers 7

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 66
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    .line 67
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    .line 68
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    .line 69
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    mul-float/2addr v1, p0

    iget p0, p1, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    mul-float/2addr p2, p0

    add-float/2addr v1, p2

    iput v1, v0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-object v0
.end method


# virtual methods
.method public getPitch()F
    .registers 8

    .line 50
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v0, v1

    mul-double/2addr v0, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getRoll()F
    .registers 7

    .line 60
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-float/2addr p0, p0

    mul-float/2addr v1, v1

    add-float/2addr p0, v1

    float-to-double v0, p0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getYaw()F
    .registers 5

    .line 55
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public setFromMatrix([F)V
    .registers 15

    const/4 v0, 0x0

    .line 18
    aget v0, p1, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    add-float v2, v0, v1

    const/16 v3, 0x8

    aget v3, p1, v3

    add-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/high16 v11, 0x3e800000    # 0.25f

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v4, :cond_42

    add-float/2addr v2, v12

    float-to-double v0, v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v1, v0

    div-float/2addr v11, v1

    .line 21
    iput v11, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    .line 22
    aget v0, p1, v10

    aget v2, p1, v9

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    .line 23
    aget v0, p1, v8

    aget v2, p1, v7

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    .line 24
    aget v0, p1, v6

    aget p1, p1, v5

    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-void

    :cond_42
    cmpl-float v2, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v2, :cond_72

    cmpl-float v2, v0, v3

    if-lez v2, :cond_72

    add-float/2addr v0, v12

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    float-to-double v0, v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    .line 28
    aget v1, p1, v10

    aget v2, p1, v9

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    mul-float/2addr v11, v0

    .line 29
    iput v11, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    .line 30
    aget v1, p1, v5

    aget v2, p1, v6

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    .line 31
    aget v1, p1, v8

    aget p1, p1, v7

    add-float/2addr v1, p1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-void

    :cond_72
    cmpl-float v2, v1, v3

    if-lez v2, :cond_9c

    add-float/2addr v1, v12

    sub-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-double v0, v1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    .line 34
    aget v1, p1, v8

    aget v2, p1, v7

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    .line 35
    aget v1, p1, v5

    aget v2, p1, v6

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    mul-float/2addr v11, v0

    .line 36
    iput v11, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    .line 37
    aget v1, p1, v9

    aget p1, p1, v10

    add-float/2addr v1, p1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-void

    :cond_9c
    add-float/2addr v3, v12

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    float-to-double v0, v3

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    .line 40
    aget v1, p1, v6

    aget v2, p1, v5

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->w:F

    .line 41
    aget v1, p1, v8

    aget v2, p1, v7

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->x:F

    .line 42
    aget v1, p1, v9

    aget p1, p1, v10

    add-float/2addr v1, p1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->y:F

    mul-float/2addr v0, v11

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/Quaternion;->z:F

    return-void
.end method
