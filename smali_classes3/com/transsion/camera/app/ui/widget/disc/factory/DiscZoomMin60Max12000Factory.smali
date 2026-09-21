.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m1000Angle:D

.field private m12000Angle:D

.field private m200Angle:D

.field private m3000Angle:D

.field private m500Angle:D

.field private m60Angle:D

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

    const-string v1, "DiscZoomMin60Max12000Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1770

    .line 10
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMinValue:I

    const v0, 0x124f80

    .line 11
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMaxValue:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x45bb8000    # 6000.0f

    .line 96
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m60Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 97
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 98
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m500Angle:D

    const v0, 0x47c35000    # 100000.0f

    .line 99
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m1000Angle:D

    const v0, 0x48927c00    # 300000.0f

    .line 100
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m3000Angle:D

    const v0, 0x49927c00    # 1200000.0f

    .line 101
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m12000Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->calculateMajorTickAngle(FD)V

    const-wide v4, 0x40b7700000000000L    # 6000.0

    cmpl-double v1, p1, v4

    const-wide v6, 0x40d3880000000000L    # 20000.0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz v1, :cond_1f

    cmpg-double v1, p1, v6

    if-gez v1, :cond_1f

    move v1, v9

    goto :goto_20

    :cond_1f
    move v1, v8

    :goto_20
    cmpl-double v10, p1, v6

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    if-ltz v10, :cond_2f

    cmpg-double v10, p1, v11

    if-gez v10, :cond_2f

    move v10, v9

    goto :goto_30

    :cond_2f
    move v10, v8

    :goto_30
    cmpl-double v13, p1, v11

    const-wide v14, 0x41124f8000000000L    # 300000.0

    if-ltz v13, :cond_3f

    cmpg-double v13, p1, v14

    if-gez v13, :cond_3f

    move v13, v9

    goto :goto_40

    :cond_3f
    move v13, v8

    :goto_40
    cmpl-double v16, p1, v14

    if-ltz v16, :cond_4e

    const-wide v16, 0x41324f8000000000L    # 1200000.0

    cmpg-double v16, p1, v16

    if-gez v16, :cond_4e

    move v8, v9

    :cond_4e
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v1, :cond_6d

    sub-double v4, p1, v4

    const-wide v6, 0x40cb580000000000L    # 14000.0

    div-double/2addr v4, v6

    .line 141
    iget-wide v6, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m60Angle:D

    iget-wide v8, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m200Angle:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v4, v4, v16

    const v1, 0x45bb8000    # 6000.0f

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_6d
    if-eqz v10, :cond_89

    sub-double v1, p1, v6

    const-wide v3, 0x40f3880000000000L    # 80000.0

    div-double/2addr v1, v3

    .line 145
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m200Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m1000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x469c4000    # 20000.0f

    move-wide/from16 v2, p4

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_89
    if-eqz v13, :cond_a5

    sub-double v1, p1, v11

    const-wide v3, 0x41086a0000000000L    # 200000.0

    div-double/2addr v1, v3

    .line 149
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m1000Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m3000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x47c35000    # 100000.0f

    move-wide/from16 v2, p4

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_a5
    if-eqz v8, :cond_c1

    sub-double v1, p1, v14

    const-wide v3, 0x412b774000000000L    # 900000.0

    div-double/2addr v1, v3

    .line 153
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m3000Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m12000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x48927c00    # 300000.0f

    move-wide/from16 v2, p4

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_c1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public calculateProgress(FD)D
    .registers 15

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->calculateMajorTickAngle(FD)V

    .line 107
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m200Angle:D

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

    .line 108
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m1000Angle:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 109
    :goto_20
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m1000Angle:D

    cmpl-double v7, v5, v0

    if-ltz v7, :cond_2e

    iget-wide v7, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m3000Angle:D

    cmpl-double v7, v0, v7

    if-lez v7, :cond_2e

    move v7, v3

    goto :goto_2f

    :cond_2e
    move v7, v2

    .line 110
    :goto_2f
    iget-wide v8, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m3000Angle:D

    cmpl-double v10, v8, v0

    if-ltz v10, :cond_36

    move v2, v3

    :cond_36
    if-eqz p3, :cond_4b

    .line 114
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m60Angle:D

    sub-double v0, v5, v0

    sub-double/2addr v5, p1

    div-double/2addr v0, v5

    const-wide p1, 0x40cb580000000000L    # 14000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40b7700000000000L    # 6000.0

    :goto_49
    add-double/2addr v0, p1

    goto :goto_88

    :cond_4b
    if-eqz v4, :cond_5f

    sub-double v0, p1, v0

    .line 117
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m500Angle:D

    sub-double/2addr p1, v5

    div-double/2addr v0, p1

    const-wide p1, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40d3880000000000L    # 20000.0

    goto :goto_49

    :cond_5f
    if-eqz v7, :cond_72

    sub-double p1, v5, v0

    sub-double/2addr v5, v8

    div-double/2addr p1, v5

    const-wide v0, 0x41086a0000000000L    # 200000.0

    mul-double/2addr p1, v0

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    :goto_70
    add-double/2addr v0, p1

    goto :goto_88

    :cond_72
    if-eqz v2, :cond_86

    sub-double p1, v8, v0

    .line 123
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->m12000Angle:D

    sub-double/2addr v8, v0

    div-double/2addr p1, v8

    const-wide v0, 0x412b774000000000L    # 900000.0

    mul-double/2addr p1, v0

    const-wide v0, 0x41124f8000000000L    # 300000.0

    goto :goto_70

    :cond_86
    const-wide/16 v0, 0x0

    .line 126
    :goto_88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateProgress : ,inWide: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",inSecond: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",inThird: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",inFours: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",zoomProgress:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0
.end method

.method public calculateTickInformation()Ljava/util/ArrayList;
    .registers 11

    .line 22
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMinValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 24
    :cond_5
    :goto_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMaxValue:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    const v3, 0x49927c00    # 1200000.0f

    if-gez v1, :cond_ca

    .line 25
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x461c4000    # 10000.0f

    cmpg-float v4, v0, v1

    const/high16 v5, 0x447a0000    # 1000.0f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    if-gez v4, :cond_41

    const v1, 0x45bb8000    # 6000.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_34

    .line 30
    const-string v7, "0.6_14"

    :cond_34
    add-float/2addr v0, v5

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v6}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_41
    const v4, 0x469c4000    # 20000.0f

    cmpg-float v8, v0, v4

    if-gez v8, :cond_5b

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4e

    .line 37
    const-string v7, "1_23"

    :cond_4e
    add-float/2addr v0, v5

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v6}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5b
    const v1, 0x47435000    # 50000.0f

    cmpg-float v5, v0, v1

    const v6, 0x459c4000    # 5000.0f

    const/high16 v8, 0x3f000000    # 0.5f

    if-gez v5, :cond_7a

    cmpl-float v1, v0, v4

    if-nez v1, :cond_6d

    .line 44
    const-string v7, "2_47"

    :cond_6d
    add-float/2addr v0, v6

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v8}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7a
    const v5, 0x47c35000    # 100000.0f

    cmpg-float v9, v0, v5

    if-gez v9, :cond_95

    cmpl-float v1, v0, v1

    if-nez v1, :cond_87

    .line 51
    const-string v7, "5_135"

    :cond_87
    add-float/2addr v0, v6

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v8}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_95
    const v1, 0x48927c00    # 300000.0f

    cmpg-float v6, v0, v1

    if-gez v6, :cond_b2

    cmpl-float v1, v0, v5

    if-nez v1, :cond_a2

    .line 58
    const-string v7, "10_270"

    :cond_a2
    add-float/2addr v0, v4

    .line 60
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v7, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b2
    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    cmpl-float v1, v0, v1

    if-nez v1, :cond_bc

    .line 65
    const-string v7, "30_null"

    :cond_bc
    add-float/2addr v0, v5

    .line 67
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_ca
    cmpl-float v0, v0, v3

    if-nez v0, :cond_e4

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const-string v1, "120_null"

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_e4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMaxValue:I

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    .line 166
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max12000Factory;->mMinValue:I

    return p0
.end method

.method public isMajorTick(I)Z
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->isMajorTick(I)Z

    move-result p0

    return p0
.end method

.method isNeedVibrate(I)Z
    .registers 2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x64

    if-eq p1, p0, :cond_1f

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_1f

    const/16 p0, 0xbb8

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2ee0

    if-ne p1, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method
