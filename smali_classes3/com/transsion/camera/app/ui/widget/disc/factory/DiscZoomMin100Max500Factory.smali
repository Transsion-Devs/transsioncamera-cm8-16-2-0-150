.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m100Angle:D

.field private m200Angle:D

.field private m500Angle:D

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mZoomTickList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DiscZoomMin60Max1000Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x2710

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mMinValue:I

    const v0, 0xc350

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mMaxValue:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x461c4000    # 10000.0f

    .line 72
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m100Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 73
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 74
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m500Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 14

    .line 101
    invoke-direct {p0, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->calculateMajorTickAngle(FD)V

    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpl-double p3, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, 0x40d3880000000000L    # 20000.0

    if-ltz p3, :cond_19

    cmpg-double p3, p1, v4

    if-gez p3, :cond_19

    move p3, v3

    goto :goto_1a

    :cond_19
    move p3, v2

    :goto_1a
    cmpl-double v6, p1, v4

    if-ltz v6, :cond_28

    const-wide v6, 0x40e86a0000000000L    # 50000.0

    cmpg-double v6, p1, v6

    if-gez v6, :cond_28

    move v2, v3

    :cond_28
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz p3, :cond_43

    sub-double/2addr p1, v0

    div-double/2addr p1, v0

    .line 107
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m100Angle:D

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m200Angle:D

    sub-double/2addr v0, v2

    mul-double/2addr p1, v0

    add-double v4, p1, v6

    const v1, 0x461c4000    # 10000.0f

    move-object v0, p0

    move-wide v2, p4

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide p0

    return-wide p0

    :cond_43
    move-object v0, p0

    move p0, v2

    move-wide v2, p4

    if-eqz p0, :cond_5f

    sub-double/2addr p1, v4

    const-wide p3, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr p1, p3

    .line 111
    iget-wide p3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m200Angle:D

    iget-wide v4, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m500Angle:D

    sub-double/2addr p3, v4

    mul-double/2addr p1, p3

    add-double v4, p1, v6

    const v1, 0x469c4000    # 20000.0f

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide p0

    return-wide p0

    :cond_5f
    const v1, 0x47435000    # 50000.0f

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public calculateProgress(FD)D
    .registers 10

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->calculateMajorTickAngle(FD)V

    .line 80
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m200Angle:D

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p3, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p3, :cond_12

    move p3, v3

    goto :goto_13

    :cond_12
    move p3, v2

    :goto_13
    cmpl-double v4, p1, v0

    if-ltz v4, :cond_1e

    .line 81
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m500Angle:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1e

    move v2, v3

    :cond_1e
    if-eqz p3, :cond_2e

    .line 86
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m100Angle:D

    sub-double v0, v2, v0

    sub-double/2addr v2, p1

    div-double/2addr v0, v2

    const-wide p1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, p1

    :goto_2c
    add-double/2addr v0, p1

    goto :goto_47

    :cond_2e
    if-eqz v2, :cond_42

    sub-double v0, p1, v0

    .line 89
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->m500Angle:D

    sub-double/2addr p1, v2

    div-double/2addr v0, p1

    const-wide p1, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40d3880000000000L    # 20000.0

    goto :goto_2c

    :cond_42
    const-wide v0, 0x40e86a0000000000L    # 50000.0

    .line 95
    :goto_47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateProgress : ,inWide: ,zoomProgress:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method public calculateTickInformation()Ljava/util/ArrayList;
    .registers 7

    const v0, 0x461c4000    # 10000.0f

    .line 33
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 35
    :cond_5
    :goto_5
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_85

    .line 36
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v3, 0x469c4000    # 20000.0f

    cmpg-float v4, v1, v3

    const/4 v5, 0x0

    if-gez v4, :cond_51

    cmpl-float v1, v1, v0

    if-nez v1, :cond_3d

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    :cond_3d
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x449c4000    # 1250.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3e000000    # 0.125f

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_51
    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    cmpl-float v1, v1, v3

    if-nez v1, :cond_71

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_71
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x459c4000    # 5000.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_85
    cmpl-float v0, v1, v2

    if-nez v0, :cond_b7

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_b7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    const p0, 0xc350

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    const/16 p0, 0x2710

    return p0
.end method

.method isNeedVibrate(I)Z
    .registers 2

    const/16 p0, 0x64

    if-eq p1, p0, :cond_13

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_13

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_13

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method
