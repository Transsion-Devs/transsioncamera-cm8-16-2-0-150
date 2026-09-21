.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m1000Angle:D

.field private m100Angle:D

.field private m200Angle:D

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

    const-string v1, "DiscZoomMin60Max1000Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1770

    .line 10
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMinValue:I

    const v0, 0x186a0

    .line 11
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMaxValue:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x45bb8000    # 6000.0f

    .line 85
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m60Angle:D

    const v0, 0x461c4000    # 10000.0f

    .line 86
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m100Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 87
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 88
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m500Angle:D

    const v0, 0x47c35000    # 100000.0f

    .line 89
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m1000Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->calculateMajorTickAngle(FD)V

    const-wide v4, 0x40b7700000000000L    # 6000.0

    cmpl-double v1, p1, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x40c3880000000000L    # 10000.0

    if-ltz v1, :cond_1f

    cmpg-double v1, p1, v8

    if-gez v1, :cond_1f

    move v1, v7

    goto :goto_20

    :cond_1f
    move v1, v6

    :goto_20
    cmpl-double v10, p1, v8

    const-wide v11, 0x40d3880000000000L    # 20000.0

    if-ltz v10, :cond_2f

    cmpg-double v10, p1, v11

    if-gez v10, :cond_2f

    move v10, v7

    goto :goto_30

    :cond_2f
    move v10, v6

    :goto_30
    cmpl-double v13, p1, v11

    const-wide v14, 0x40e86a0000000000L    # 50000.0

    if-ltz v13, :cond_3f

    cmpg-double v13, p1, v14

    if-gez v13, :cond_3f

    move v13, v7

    goto :goto_40

    :cond_3f
    move v13, v6

    :goto_40
    cmpl-double v16, p1, v14

    if-ltz v16, :cond_4e

    const-wide v16, 0x40f86a0000000000L    # 100000.0

    cmpg-double v16, p1, v16

    if-gez v16, :cond_4e

    move v6, v7

    :cond_4e
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v1, :cond_6d

    sub-double v4, p1, v4

    const-wide v6, 0x40af400000000000L    # 4000.0

    div-double/2addr v4, v6

    .line 129
    iget-wide v6, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m60Angle:D

    iget-wide v8, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m100Angle:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v4, v4, v16

    const v1, 0x45bb8000    # 6000.0f

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_6d
    if-eqz v10, :cond_84

    sub-double v1, p1, v8

    div-double/2addr v1, v8

    .line 133
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m100Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m200Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x461c4000    # 10000.0f

    move-wide/from16 v2, p4

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_84
    if-eqz v13, :cond_a0

    sub-double v1, p1, v11

    const-wide v3, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr v1, v3

    .line 137
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m200Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m500Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x469c4000    # 20000.0f

    move-wide/from16 v2, p4

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_a0
    if-eqz v6, :cond_b7

    sub-double v1, p1, v14

    div-double/2addr v1, v14

    .line 141
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m500Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m1000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v16

    const v1, 0x47435000    # 50000.0f

    move-wide/from16 v2, p4

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_b7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public calculateProgress(FD)D
    .registers 15

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->calculateMajorTickAngle(FD)V

    .line 95
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m100Angle:D

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

    .line 96
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m200Angle:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    .line 97
    :goto_20
    iget-wide v5, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m200Angle:D

    cmpl-double v7, v5, v0

    if-ltz v7, :cond_2e

    iget-wide v7, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m500Angle:D

    cmpl-double v7, v0, v7

    if-lez v7, :cond_2e

    move v7, v3

    goto :goto_2f

    :cond_2e
    move v7, v2

    .line 98
    :goto_2f
    iget-wide v8, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m500Angle:D

    cmpl-double v10, v8, v0

    if-ltz v10, :cond_36

    move v2, v3

    :cond_36
    if-eqz p3, :cond_4b

    .line 102
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m60Angle:D

    sub-double v0, v2, v0

    sub-double/2addr v2, p1

    div-double/2addr v0, v2

    const-wide p1, 0x40af400000000000L    # 4000.0

    mul-double/2addr v0, p1

    const-wide p1, 0x40b7700000000000L    # 6000.0

    :goto_49
    add-double/2addr v0, p1

    goto :goto_7c

    :cond_4b
    if-eqz v4, :cond_58

    sub-double v0, p1, v0

    sub-double/2addr p1, v5

    div-double/2addr v0, p1

    const-wide p1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, p1

    goto :goto_49

    :cond_58
    if-eqz v7, :cond_6b

    sub-double p1, v5, v0

    sub-double/2addr v5, v8

    div-double/2addr p1, v5

    const-wide v0, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr p1, v0

    const-wide v0, 0x40d3880000000000L    # 20000.0

    :goto_69
    add-double/2addr v0, p1

    goto :goto_7c

    :cond_6b
    if-eqz v2, :cond_7a

    sub-double p1, v8, v0

    .line 111
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->m1000Angle:D

    sub-double/2addr v8, v0

    div-double/2addr p1, v8

    const-wide v0, 0x40e86a0000000000L    # 50000.0

    mul-double/2addr p1, v0

    goto :goto_69

    :cond_7a
    const-wide/16 v0, 0x0

    .line 114
    :goto_7c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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
    .registers 9

    .line 21
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMinValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 23
    :cond_5
    :goto_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMaxValue:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x47c35000    # 100000.0f

    if-gez v1, :cond_f9

    .line 24
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x461c4000    # 10000.0f

    cmpg-float v4, v0, v1

    const/4 v5, 0x0

    if-gez v4, :cond_59

    const v1, 0x45bb8000    # 6000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_45

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0.6_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    :cond_45
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_59
    const v4, 0x469c4000    # 20000.0f

    cmpg-float v6, v0, v4

    if-gez v6, :cond_91

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7c

    .line 36
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

    move-result-object v5

    .line 38
    :cond_7c
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x449c4000    # 1250.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3e000000    # 0.125f

    invoke-virtual {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_91
    const v6, 0x47435000    # 50000.0f

    cmpg-float v7, v0, v6

    if-gez v7, :cond_c9

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b4

    .line 43
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

    move-result-object v5

    .line 45
    :cond_b4
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x459c4000    # 5000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c9
    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e9

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    :cond_e9
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_f9
    cmpl-float v0, v0, v3

    if-nez v0, :cond_129

    .line 58
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

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMaxValue:I

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    .line 154
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max1000Factory;->mMinValue:I

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

    if-eq p1, p0, :cond_17

    const/16 p0, 0x64

    if-eq p1, p0, :cond_17

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_17

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_17

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public setBaseFocalLength(F)V
    .registers 2

    .line 76
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->setBaseFocalLength(F)V

    return-void
.end method
