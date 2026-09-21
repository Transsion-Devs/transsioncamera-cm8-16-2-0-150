.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m1000Angle:D

.field private m100Angle:D

.field private m200Angle:D

.field private m500Angle:D

.field private mMaxValue:I

.field private mMinValue:I

.field private mZoomTickList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;-><init>()V

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DiscZoomMin60Max1000Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x2710

    .line 10
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMinValue:I

    const v0, 0x186a0

    .line 11
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMaxValue:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x461c4000    # 10000.0f

    .line 76
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m100Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 77
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 78
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m500Angle:D

    const v0, 0x47c35000    # 100000.0f

    .line 79
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m1000Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 20

    move/from16 v0, p3

    move-wide/from16 v2, p4

    .line 109
    invoke-direct {p0, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->calculateMajorTickAngle(FD)V

    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpl-double v4, p1, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide v7, 0x40d3880000000000L    # 20000.0

    if-ltz v4, :cond_1d

    cmpg-double v4, p1, v7

    if-gez v4, :cond_1d

    move v4, v6

    goto :goto_1e

    :cond_1d
    move v4, v5

    :goto_1e
    cmpl-double v9, p1, v7

    const-wide v10, 0x40e86a0000000000L    # 50000.0

    if-ltz v9, :cond_2d

    cmpg-double v9, p1, v10

    if-gez v9, :cond_2d

    move v9, v6

    goto :goto_2e

    :cond_2d
    move v9, v5

    :goto_2e
    cmpl-double v12, p1, v10

    if-ltz v12, :cond_3c

    const-wide v12, 0x40f86a0000000000L    # 100000.0

    cmpg-double v12, p1, v12

    if-gez v12, :cond_3c

    move v5, v6

    :cond_3c
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v4, :cond_56

    sub-double v4, p1, v0

    div-double/2addr v4, v0

    .line 116
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m100Angle:D

    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m200Angle:D

    sub-double/2addr v0, v6

    mul-double/2addr v4, v0

    add-double/2addr v4, v12

    const v1, 0x461c4000    # 10000.0f

    move-object v0, p0

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_56
    if-eqz v9, :cond_73

    sub-double v1, p1, v7

    const-wide v3, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr v1, v3

    .line 120
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m200Angle:D

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m500Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v12

    const v1, 0x469c4000    # 20000.0f

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_73
    if-eqz v5, :cond_8b

    sub-double v1, p1, v10

    div-double/2addr v1, v10

    .line 124
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m500Angle:D

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m1000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v12

    const v1, 0x47435000    # 50000.0f

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_8b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public calculateProgress(FD)D
    .registers 12

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->calculateMajorTickAngle(FD)V

    .line 85
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m200Angle:D

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

    if-ltz v4, :cond_1f

    .line 86
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m500Angle:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 87
    :goto_20
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m500Angle:D

    cmpl-double v7, v5, v0

    if-ltz v7, :cond_27

    move v2, v3

    :cond_27
    if-eqz p3, :cond_37

    .line 92
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m100Angle:D

    sub-double v0, v2, v0

    sub-double/2addr v2, p1

    div-double/2addr v0, v2

    const-wide p1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, p1

    :goto_35
    add-double/2addr v0, p1

    goto :goto_5b

    :cond_37
    if-eqz v4, :cond_49

    sub-double v0, p1, v0

    sub-double/2addr p1, v5

    div-double/2addr v0, p1

    const-wide p1, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40d3880000000000L    # 20000.0

    goto :goto_35

    :cond_49
    if-eqz v2, :cond_59

    sub-double p1, v5, v0

    .line 98
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->m1000Angle:D

    sub-double/2addr v5, v0

    div-double/2addr p1, v5

    const-wide v0, 0x40e86a0000000000L    # 50000.0

    mul-double/2addr p1, v0

    add-double/2addr v0, p1

    goto :goto_5b

    :cond_59
    const-wide/16 v0, 0x0

    .line 103
    :goto_5b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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
    .registers 9

    .line 20
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMinValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 22
    :cond_5
    :goto_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMaxValue:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x47c35000    # 100000.0f

    if-gez v1, :cond_c1

    .line 23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x469c4000    # 20000.0f

    cmpg-float v4, v0, v1

    const v5, 0x461c4000    # 10000.0f

    const/4 v6, 0x0

    if-gez v4, :cond_59

    cmpl-float v0, v0, v5

    if-nez v0, :cond_45

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    :cond_45
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x449c4000    # 1250.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3e000000    # 0.125f

    invoke-virtual {p0, v6, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_59
    const v4, 0x47435000    # 50000.0f

    cmpg-float v7, v0, v4

    if-gez v7, :cond_91

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7c

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    :cond_7c
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x459c4000    # 5000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v6, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_91
    cmpg-float v1, v0, v3

    if-gez v1, :cond_5

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b1

    .line 42
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

    move-result-object v6

    .line 44
    :cond_b1
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c1
    cmpl-float v0, v0, v3

    if-nez v0, :cond_f1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "10_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_f1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMaxValue:I

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin100Max1000Factory;->mMinValue:I

    return p0
.end method

.method public isMajorTick(I)Z
    .registers 2

    .line 64
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->isMajorTick(I)Z

    move-result p0

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

.method public setBaseFocalLength(F)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->setBaseFocalLength(F)V

    return-void
.end method
