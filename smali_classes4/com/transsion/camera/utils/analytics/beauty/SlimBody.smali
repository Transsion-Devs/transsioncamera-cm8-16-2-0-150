.class public Lcom/transsion/camera/utils/analytics/beauty/SlimBody;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "SourceFile"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;

.field private mMode:I

.field private mModeFlag:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v1, "slimbody_custom_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearValue()V
    .registers 2

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method protected getValue(Ljava/lang/String;)I
    .registers 22

    move-object/from16 v0, p1

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    sparse-switch v1, :sswitch_data_122

    goto/16 :goto_10b

    :sswitch_2d
    const-string v1, "slimbody_custom_0_0_0_1_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_10b

    :cond_37
    move/from16 v19, v2

    goto/16 :goto_10b

    :sswitch_3b
    const-string v1, "slimbody_custom_0_0_0_0_1_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_10b

    :cond_45
    move/from16 v19, v3

    goto/16 :goto_10b

    :sswitch_49
    const-string v1, "slimbody_custom_0_0_0_0_0_1_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_10b

    :cond_53
    move/from16 v19, v4

    goto/16 :goto_10b

    :sswitch_57
    const-string v1, "slimbody_custom_0_0_0_0_0_0_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_10b

    :cond_61
    move/from16 v19, v5

    goto/16 :goto_10b

    :sswitch_65
    const-string v1, "slimbody_custom_1_0_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_10b

    :cond_6f
    move/from16 v19, v6

    goto/16 :goto_10b

    :sswitch_73
    const-string v1, "slimbody_sb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_10b

    :cond_7d
    move/from16 v19, v7

    goto/16 :goto_10b

    :sswitch_81
    const-string v1, "slimbody_sb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_10b

    :cond_8b
    move/from16 v19, v8

    goto/16 :goto_10b

    :sswitch_8f
    const-string v1, "slimbody_sb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_10b

    :cond_99
    move/from16 v19, v9

    goto/16 :goto_10b

    :sswitch_9d
    const-string v1, "slimbody_sb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_10b

    :cond_a7
    move/from16 v19, v10

    goto/16 :goto_10b

    :sswitch_ab
    const-string v1, "slimbody_fb_6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_10b

    :cond_b5
    move/from16 v19, v11

    goto :goto_10b

    :sswitch_b8
    const-string v1, "slimbody_fb_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_10b

    :cond_c1
    move/from16 v19, v12

    goto :goto_10b

    :sswitch_c4
    const-string v1, "slimbody_fb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_10b

    :cond_cd
    move/from16 v19, v13

    goto :goto_10b

    :sswitch_d0
    const-string v1, "slimbody_fb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_10b

    :cond_d9
    move/from16 v19, v14

    goto :goto_10b

    :sswitch_dc
    const-string v1, "slimbody_fb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto :goto_10b

    :cond_e5
    move/from16 v19, v15

    goto :goto_10b

    :sswitch_e8
    const-string v1, "slimbody_fb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    goto :goto_10b

    :cond_f1
    move/from16 v19, v16

    goto :goto_10b

    :sswitch_f4
    const-string v1, "slimbody_custom_0_1_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    goto :goto_10b

    :cond_fd
    move/from16 v19, v17

    goto :goto_10b

    :sswitch_100
    const-string v1, "slimbody_custom_0_0_1_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_109

    goto :goto_10b

    :cond_109
    move/from16 v19, v18

    :goto_10b
    packed-switch v19, :pswitch_data_168

    return v18

    :pswitch_10f
    return v4

    :pswitch_110
    return v3

    :pswitch_111
    return v2

    :pswitch_112
    const/16 v0, 0x11

    return v0

    :pswitch_115
    return v7

    :pswitch_116
    return v8

    :pswitch_117
    return v9

    :pswitch_118
    return v10

    :pswitch_119
    return v11

    :pswitch_11a
    return v12

    :pswitch_11b
    return v13

    :pswitch_11c
    return v14

    :pswitch_11d
    return v15

    :pswitch_11e
    return v16

    :pswitch_11f
    return v17

    :pswitch_120
    return v6

    :pswitch_121
    return v5

    :sswitch_data_122
    .sparse-switch
        -0x7e528ad7 -> :sswitch_100
        -0x7db24717 -> :sswitch_f4
        -0x3c76c6b2 -> :sswitch_e8
        -0x3c76c6b1 -> :sswitch_dc
        -0x3c76c6b0 -> :sswitch_d0
        -0x3c76c6af -> :sswitch_c4
        -0x3c76c6ae -> :sswitch_b8
        -0x3c76c6ad -> :sswitch_ab
        -0x3c70dddf -> :sswitch_9d
        -0x3c70ddde -> :sswitch_8f
        -0x3c70dddd -> :sswitch_81
        -0x3c70dddc -> :sswitch_73
        -0x2413f357 -> :sswitch_65
        -0x1296f9d7 -> :sswitch_57
        -0x1296f617 -> :sswitch_49
        -0x1288e257 -> :sswitch_3b
        0x224f4169 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
    .end packed-switch
.end method

.method protected getValue()Ljava/lang/String;
    .registers 3

    .line 108
    const-string v0, "off"

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 109
    iget v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_14
    const-string v1, "slimbody_sb_"

    if-eqz v0, :cond_2a

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v1

    .line 117
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slimbody_fb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBodySlim()V
    .registers 2

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setButtPlump()V
    .registers 2

    const/16 v0, 0x10

    .line 91
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrink()V
    .registers 2

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegLengthen()V
    .registers 2

    const/16 v0, 0x40

    .line 99
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegSlim()V
    .registers 2

    const/16 v0, 0x20

    .line 95
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    return-void
.end method

.method public setShoulderSlim()V
    .registers 2

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setWaistSlim()V
    .registers 2

    const/16 v0, 0x8

    .line 87
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method
