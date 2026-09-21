.class public Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TOLER_VARIANCE:I = 0x2710

.field private static sConincide:Z

.field private static sDegrees:F

.field private static sIsHorizontal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInRange(FFF)Z
    .registers 4

    cmpg-float p0, p2, p1

    if-gez p0, :cond_a

    cmpg-float p0, p1, p3

    if-gez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public computeDegreesByCos(FF)F
    .registers 7

    float-to-double v0, p2

    float-to-double v2, p1

    .line 61
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 62
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_22

    return p0

    :cond_22
    neg-float p0, p0

    return p0
.end method

.method public correctDegrees(F)F
    .registers 5

    const/high16 v0, 0x42ae0000    # 87.0f

    const/high16 v1, 0x42ba0000    # 93.0f

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_d

    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_d
    const/high16 v0, -0x3d460000    # -93.0f

    const/high16 v1, -0x3d520000    # -87.0f

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 p0, -0x3d4c0000    # -90.0f

    return p0

    :cond_1a
    const/high16 v0, -0x3fc00000    # -3.0f

    const/high16 v1, 0x40400000    # 3.0f

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x0

    return p0

    :cond_26
    const/high16 v0, 0x43310000    # 177.0f

    const/high16 v1, 0x43340000    # 180.0f

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result v0

    if-nez v0, :cond_3c

    const/high16 v0, -0x3ccc0000    # -180.0f

    const/high16 v2, -0x3ccf0000    # -177.0f

    .line 46
    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    return p1

    :cond_3c
    :goto_3c
    return v1
.end method

.method public getDegrees()F
    .registers 1

    .line 23
    sget p0, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sDegrees:F

    return p0
.end method

.method public getDegrees(FFLjava/util/concurrent/ArrayBlockingQueue;)F
    .registers 4

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->computeDegreesByCos(FF)F

    move-result p1

    .line 57
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->smoothData(Ljava/util/concurrent/ArrayBlockingQueue;F)F

    move-result p0

    return p0
.end method

.method public isConincide()Z
    .registers 1

    .line 31
    sget-boolean p0, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sConincide:Z

    return p0
.end method

.method public isHorizontal()Z
    .registers 1

    .line 27
    sget-boolean p0, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sIsHorizontal:Z

    return p0
.end method

.method public isShaking(Ljava/util/concurrent/ArrayBlockingQueue;)Z
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->variance(Ljava/util/concurrent/ArrayBlockingQueue;)F

    move-result p0

    sget p1, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->TOLER_VARIANCE:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public onSensorChanged(F)V
    .registers 6

    .line 16
    sput p1, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sDegrees:F

    const/high16 v0, 0x42340000    # 45.0f

    const/high16 v1, 0x43070000    # 135.0f

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    const/high16 v0, -0x3cf90000    # -135.0f

    const/high16 v3, -0x3dcc0000    # -45.0f

    .line 18
    invoke-direct {p0, p1, v0, v3}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isInRange(FFF)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    move p0, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move p0, v1

    :goto_1c
    sput-boolean p0, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sIsHorizontal:Z

    if-eqz p0, :cond_2f

    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_3a

    const/high16 p0, -0x3d4c0000    # -90.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2d

    goto :goto_3a

    :cond_2d
    move v1, v2

    goto :goto_3a

    :cond_2f
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_3a

    const/high16 p0, 0x43340000    # 180.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2d

    .line 19
    :cond_3a
    :goto_3a
    sput-boolean v1, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->sConincide:Z

    return-void
.end method

.method public smoothData(Ljava/util/concurrent/ArrayBlockingQueue;F)F
    .registers 4

    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result p0

    if-lez p0, :cond_e

    .line 69
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_18

    .line 71
    :cond_e
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 76
    :goto_18
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p2, v0

    goto :goto_1d

    .line 80
    :cond_2f
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    return p2
.end method

.method public variance(Ljava/util/concurrent/ArrayBlockingQueue;)F
    .registers 9

    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    return v0

    .line 95
    :cond_c
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 96
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_11

    :cond_23
    int-to-float p0, p0

    div-float/2addr v2, p0

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    float-to-double v3, v0

    .line 101
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v2

    float-to-double v0, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v3, v0

    double-to-float v0, v3

    goto :goto_29

    :cond_45
    div-float/2addr v0, p0

    return v0
.end method
