.class public abstract Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;


# instance fields
.field public mBaseFocalLength:F

.field public final mMoveSpeed:F

.field public final mTickCount:I

.field public mTickValues:Ljava/util/List;

.field public mValue:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40700000    # 3.75f

    .line 11
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mMoveSpeed:F

    const/16 v0, 0x32

    .line 12
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickCount:I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    const v0, 0x41baa3d7    # 23.33f

    .line 15
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mBaseFocalLength:F

    return-void
.end method


# virtual methods
.method public calculateMajorTickAngle(FFD)D
    .registers 9

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->getIndex(F)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    mul-double/2addr p0, v2

    sub-double/2addr v0, p0

    sub-double/2addr v0, p3

    return-wide v0
.end method

.method public calculateSelectValueAngle(FDD)D
    .registers 10

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->getIndex(F)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    sub-double/2addr v0, p2

    sub-double/2addr v0, p4

    const-wide/high16 p0, 0x400e000000000000L    # 3.75

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public convertZoomToFocal(I)Ljava/lang/String;
    .registers 2

    int-to-float p1, p1

    .line 101
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mBaseFocalLength:F

    mul-float/2addr p1, p0

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;
    .registers 3

    .line 82
    new-instance p0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;-><init>(Ljava/lang/String;F)V

    return-object p0
.end method

.method public getIndex(F)I
    .registers 2

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getIndexF(F)F
    .registers 9

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_25

    move v0, v4

    goto :goto_26

    :cond_25
    move v0, v1

    .line 41
    :goto_26
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_6c

    .line 42
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 43
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-eqz v0, :cond_54

    cmpl-float v6, p1, v2

    if-ltz v6, :cond_6a

    cmpg-float v6, p1, v3

    if-gtz v6, :cond_6a

    goto :goto_5c

    :cond_54
    cmpg-float v6, p1, v2

    if-gtz v6, :cond_6a

    cmpl-float v6, p1, v3

    if-ltz v6, :cond_6a

    :goto_5c
    sub-float/2addr v3, v2

    .line 53
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, v2

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v1

    div-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0

    :cond_6a
    move v1, v5

    goto :goto_26

    :cond_6c
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getMoveSpeed()F
    .registers 1

    const/high16 p0, 0x40700000    # 3.75f

    return p0
.end method

.method public getTickCount()I
    .registers 1

    const/16 p0, 0x32

    return p0
.end method

.method public getValue(I)F
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public isMajorTick(I)Z
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->isNeedVibrate(I)Z

    move-result p0

    return p0
.end method

.method abstract isNeedVibrate(I)Z
.end method

.method public setBaseFocalLength(F)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mBaseFocalLength:F

    return-void
.end method
