.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m100Angle:D

.field private m200Angle:D

.field private m500Angle:D

.field private m60Angle:D

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

    const-string v1, "DiscZoomMin60Max500Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1770

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mMinValue:I

    const v0, 0xc350

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mMaxValue:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x45bb8000    # 6000.0f

    .line 80
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m60Angle:D

    const v0, 0x461c4000    # 10000.0f

    .line 81
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m100Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 82
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 83
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m500Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 20

    move/from16 v0, p3

    move-wide/from16 v2, p4

    .line 113
    invoke-direct {p0, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->calculateMajorTickAngle(FD)V

    const-wide v0, 0x40b7700000000000L    # 6000.0

    cmpl-double v4, p1, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide v7, 0x40c3880000000000L    # 10000.0

    if-ltz v4, :cond_1d

    cmpg-double v4, p1, v7

    if-gez v4, :cond_1d

    move v4, v6

    goto :goto_1e

    :cond_1d
    move v4, v5

    :goto_1e
    cmpl-double v9, p1, v7

    const-wide v10, 0x40d3880000000000L    # 20000.0

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

    const-wide v12, 0x40e86a0000000000L    # 50000.0

    cmpg-double v12, p1, v12

    if-gez v12, :cond_3c

    move v5, v6

    :cond_3c
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v4, :cond_5c

    sub-double v0, p1, v0

    const-wide v4, 0x40af400000000000L    # 4000.0

    div-double/2addr v0, v4

    .line 120
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m60Angle:D

    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m100Angle:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double v4, v0, v12

    const v1, 0x45bb8000    # 6000.0f

    move-object v0, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_5c
    if-eqz v9, :cond_74

    sub-double v1, p1, v7

    div-double/2addr v1, v7

    .line 124
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m100Angle:D

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m200Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v12

    const v1, 0x461c4000    # 10000.0f

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_74
    if-eqz v5, :cond_91

    sub-double v1, p1, v10

    const-wide v3, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr v1, v3

    .line 128
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m200Angle:D

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m500Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v12

    const v1, 0x469c4000    # 20000.0f

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_91
    const v1, 0x47435000    # 50000.0f

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateProgress(FD)D
    .registers 13

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->calculateMajorTickAngle(FD)V

    .line 89
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m100Angle:D

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

    .line 90
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m200Angle:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 91
    :goto_20
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m200Angle:D

    cmpl-double v7, v5, v0

    if-ltz v7, :cond_2d

    iget-wide v7, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m500Angle:D

    cmpl-double v7, v0, v7

    if-lez v7, :cond_2d

    move v2, v3

    :cond_2d
    if-eqz p3, :cond_42

    .line 95
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m60Angle:D

    sub-double v0, v2, v0

    sub-double/2addr v2, p1

    div-double/2addr v0, v2

    const-wide p1, 0x40af400000000000L    # 4000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40b7700000000000L    # 6000.0

    :goto_40
    add-double/2addr v0, p1

    goto :goto_69

    :cond_42
    if-eqz v4, :cond_4f

    sub-double v0, p1, v0

    sub-double/2addr p1, v5

    div-double/2addr v0, p1

    const-wide p1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, p1

    goto :goto_40

    :cond_4f
    if-eqz v2, :cond_64

    sub-double p1, v5, v0

    .line 101
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->m500Angle:D

    sub-double/2addr v5, v0

    div-double/2addr p1, v5

    const-wide v0, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr p1, v0

    const-wide v0, 0x40d3880000000000L    # 20000.0

    add-double/2addr v0, p1

    goto :goto_69

    :cond_64
    const-wide v0, 0x40e86a0000000000L    # 50000.0

    .line 106
    :goto_69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateProgress : ,inWide: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",inSecond: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",zoomProgress:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method public calculateTickInformation()Ljava/util/ArrayList;
    .registers 8

    const v0, 0x45bb8000    # 6000.0f

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 36
    :cond_5
    :goto_5
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_be

    .line 37
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v3, 0x461c4000    # 10000.0f

    cmpg-float v4, v1, v3

    const/4 v5, 0x0

    if-gez v4, :cond_51

    cmpl-float v1, v1, v0

    if-nez v1, :cond_3d

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0.6_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    :cond_3d
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const/high16 v2, 0x447a0000    # 1000.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 45
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_51
    const v4, 0x469c4000    # 20000.0f

    cmpg-float v6, v1, v4

    if-gez v6, :cond_89

    cmpl-float v1, v1, v3

    if-nez v1, :cond_74

    .line 49
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

    .line 51
    :cond_74
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x449c4000    # 1250.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3e000000    # 0.125f

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_89
    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a9

    .line 56
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

    .line 58
    :cond_a9
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v2, 0x459c4000    # 5000.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_be
    cmpl-float v0, v1, v2

    if-nez v0, :cond_f0

    .line 64
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

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_f0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max500Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    const p0, 0xc350

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    const/16 p0, 0x1770

    return p0
.end method

.method isNeedVibrate(I)Z
    .registers 2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_13

    const/16 p0, 0x64

    if-eq p1, p0, :cond_13

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_13

    const/16 p0, 0x1f4

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
