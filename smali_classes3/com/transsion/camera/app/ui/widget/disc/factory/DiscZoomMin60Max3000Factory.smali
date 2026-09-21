.class public Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;
.super Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;
.source "SourceFile"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private m1000Angle:D

.field private m100Angle:D

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

    const-string v1, "DiscZoomMin60Max6000Factory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1770

    .line 10
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMinValue:I

    const v0, 0x493e0

    .line 11
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMaxValue:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateMajorTickAngle(FD)V
    .registers 6

    const v0, 0x45bb8000    # 6000.0f

    .line 93
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m60Angle:D

    const v0, 0x461c4000    # 10000.0f

    .line 94
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m100Angle:D

    const v0, 0x469c4000    # 20000.0f

    .line 95
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m200Angle:D

    const v0, 0x47435000    # 50000.0f

    .line 96
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m500Angle:D

    const v0, 0x47c35000    # 100000.0f

    .line 97
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m1000Angle:D

    const v0, 0x48927c00    # 300000.0f

    .line 98
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateMajorTickAngle(FFD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m3000Angle:D

    return-void
.end method


# virtual methods
.method public calculateAngle(DFD)D
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    .line 134
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->calculateMajorTickAngle(FD)V

    const-wide v4, 0x40b7700000000000L    # 6000.0

    cmpl-double v1, p1, v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

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

    const-wide v11, 0x40d3880000000000L    # 20000.0

    if-ltz v10, :cond_2f

    cmpg-double v10, p1, v11

    if-gez v10, :cond_2f

    move v10, v9

    goto :goto_30

    :cond_2f
    move v10, v8

    :goto_30
    cmpl-double v13, p1, v11

    const-wide v14, 0x40e86a0000000000L    # 50000.0

    if-ltz v13, :cond_3f

    cmpg-double v13, p1, v14

    if-gez v13, :cond_3f

    move v13, v9

    goto :goto_40

    :cond_3f
    move v13, v8

    :goto_40
    cmpl-double v16, p1, v14

    const-wide v17, 0x40f86a0000000000L    # 100000.0

    if-ltz v16, :cond_50

    cmpg-double v16, p1, v17

    if-gez v16, :cond_50

    move/from16 v16, v9

    goto :goto_52

    :cond_50
    move/from16 v16, v8

    :goto_52
    cmpl-double v19, p1, v17

    if-ltz v19, :cond_60

    const-wide v19, 0x41124f8000000000L    # 300000.0

    cmpg-double v19, p1, v19

    if-gez v19, :cond_60

    move v8, v9

    :cond_60
    const-wide v19, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-eqz v1, :cond_7f

    sub-double v4, p1, v4

    const-wide v6, 0x40af400000000000L    # 4000.0

    div-double/2addr v4, v6

    .line 143
    iget-wide v6, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m60Angle:D

    iget-wide v8, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m100Angle:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v4, v4, v19

    const v1, 0x45bb8000    # 6000.0f

    .line 144
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_7f
    if-eqz v10, :cond_96

    sub-double v1, p1, v6

    div-double/2addr v1, v6

    .line 147
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m100Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m200Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v19

    const v1, 0x461c4000    # 10000.0f

    move-wide/from16 v2, p4

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_96
    if-eqz v13, :cond_b2

    sub-double v1, p1, v11

    const-wide v3, 0x40dd4c0000000000L    # 30000.0

    div-double/2addr v1, v3

    .line 151
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m200Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m500Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v19

    const v1, 0x469c4000    # 20000.0f

    move-wide/from16 v2, p4

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_b2
    if-eqz v16, :cond_c9

    sub-double v1, p1, v14

    div-double/2addr v1, v14

    .line 155
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m500Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m1000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v19

    const v1, 0x47435000    # 50000.0f

    move-wide/from16 v2, p4

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_c9
    if-eqz v8, :cond_e5

    sub-double v1, p1, v17

    const-wide v3, 0x41086a0000000000L    # 200000.0

    div-double/2addr v1, v3

    .line 159
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m1000Angle:D

    iget-wide v5, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m3000Angle:D

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    add-double v4, v1, v19

    const v1, 0x47c35000    # 100000.0f

    move-wide/from16 v2, p4

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->calculateSelectValueAngle(FDD)D

    move-result-wide v0

    return-wide v0

    :cond_e5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public calculateProgress(FD)D
    .registers 20

    move-object/from16 v0, p0

    .line 103
    invoke-direct/range {p0 .. p3}, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->calculateMajorTickAngle(FD)V

    .line 104
    iget-wide v1, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m100Angle:D

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v5, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_14

    move v5, v7

    goto :goto_15

    :cond_14
    move v5, v6

    :goto_15
    cmpl-double v8, v1, v3

    if-ltz v8, :cond_21

    .line 105
    iget-wide v8, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m200Angle:D

    cmpl-double v8, v3, v8

    if-lez v8, :cond_21

    move v8, v7

    goto :goto_22

    :cond_21
    move v8, v6

    .line 106
    :goto_22
    iget-wide v9, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m200Angle:D

    cmpl-double v11, v9, v3

    if-ltz v11, :cond_30

    iget-wide v11, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m500Angle:D

    cmpl-double v11, v3, v11

    if-lez v11, :cond_30

    move v11, v7

    goto :goto_31

    :cond_30
    move v11, v6

    .line 107
    :goto_31
    iget-wide v12, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m500Angle:D

    cmpl-double v14, v12, v3

    if-ltz v14, :cond_41

    iget-wide v14, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m1000Angle:D

    cmpl-double v14, v3, v14

    if-lez v14, :cond_41

    move v14, v7

    :goto_3e
    move-wide/from16 p1, v3

    goto :goto_43

    :cond_41
    move v14, v6

    goto :goto_3e

    .line 108
    :goto_43
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m1000Angle:D

    cmpl-double v15, v3, p1

    if-ltz v15, :cond_4a

    move v6, v7

    :cond_4a
    if-eqz v5, :cond_5f

    .line 112
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m60Angle:D

    sub-double v6, v3, p1

    sub-double/2addr v3, v1

    div-double/2addr v6, v3

    const-wide v1, 0x40af400000000000L    # 4000.0

    mul-double/2addr v6, v1

    const-wide v1, 0x40b7700000000000L    # 6000.0

    add-double/2addr v6, v1

    goto :goto_a5

    :cond_5f
    if-eqz v8, :cond_6e

    sub-double v3, v1, p1

    sub-double/2addr v1, v9

    div-double/2addr v3, v1

    const-wide v1, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v3, v1

    add-double v6, v3, v1

    goto :goto_a5

    :cond_6e
    if-eqz v11, :cond_82

    sub-double v1, v9, p1

    sub-double/2addr v9, v12

    div-double/2addr v1, v9

    const-wide v3, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v1, v3

    const-wide v3, 0x40d3880000000000L    # 20000.0

    :goto_7f
    add-double v6, v1, v3

    goto :goto_a5

    :cond_82
    if-eqz v14, :cond_8f

    sub-double v1, v12, p1

    sub-double/2addr v12, v3

    div-double/2addr v1, v12

    const-wide v3, 0x40e86a0000000000L    # 50000.0

    mul-double/2addr v1, v3

    goto :goto_7f

    :cond_8f
    if-eqz v6, :cond_a3

    sub-double v1, v3, p1

    .line 124
    iget-wide v6, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->m3000Angle:D

    sub-double/2addr v3, v6

    div-double/2addr v1, v3

    const-wide v3, 0x41086a0000000000L    # 200000.0

    mul-double/2addr v1, v3

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    goto :goto_7f

    :cond_a3
    const-wide/16 v6, 0x0

    .line 127
    :goto_a5
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateProgress : ,inWide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",inSecond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",inThird: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",zoomProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v6
.end method

.method public calculateTickInformation()Ljava/util/ArrayList;
    .registers 9

    .line 22
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMinValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 24
    :cond_5
    :goto_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMaxValue:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/high16 v2, 0x40200000    # 2.5f

    const v3, 0x48927c00    # 300000.0f

    if-gez v1, :cond_131

    .line 25
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x461c4000    # 10000.0f

    cmpg-float v4, v0, v1

    const/4 v5, 0x0

    if-gez v4, :cond_59

    const v1, 0x45bb8000    # 6000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_45

    .line 30
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

    .line 32
    :cond_45
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

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

    .line 37
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

    .line 39
    :cond_7c
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x449c4000    # 1250.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

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

    .line 44
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

    .line 46
    :cond_b4
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x459c4000    # 5000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c9
    const v4, 0x47c35000    # 100000.0f

    cmpg-float v7, v0, v4

    if-gez v7, :cond_fe

    cmpl-float v0, v0, v6

    if-nez v0, :cond_ec

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->convertZoomToFocal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    :cond_ec
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_fe
    cmpg-float v1, v0, v3

    if-gez v1, :cond_5

    cmpl-float v0, v0, v4

    if-nez v0, :cond_11e

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

    move-result-object v5

    .line 60
    :cond_11e
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    const v1, 0x46c35000    # 25000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_131
    cmpl-float v0, v0, v3

    if-nez v0, :cond_14b

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    const-string v1, "30_null"

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->createTickInformation(Ljava/lang/String;F)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mTickValues:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_14b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mZoomTickList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getZoomMaxValue()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMaxValue:I

    return p0
.end method

.method public getZoomMinValue()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/disc/factory/DiscZoomMin60Max3000Factory;->mMinValue:I

    return p0
.end method

.method public isMajorTick(I)Z
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->isMajorTick(I)Z

    move-result p0

    return p0
.end method

.method isNeedVibrate(I)Z
    .registers 2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1b

    const/16 p0, 0x64

    if-eq p1, p0, :cond_1b

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_1b

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_1b

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_1b

    const/16 p0, 0xbb8

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public setBaseFocalLength(F)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;->setBaseFocalLength(F)V

    return-void
.end method
