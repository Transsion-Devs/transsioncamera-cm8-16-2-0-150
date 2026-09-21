.class public abstract Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBlueDataByCameraDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const-string v0, "front"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    move-object p0, v1

    goto :goto_1f

    .line 78
    :cond_16
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->getFront()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    move-result-object p0

    goto :goto_1f

    .line 81
    :cond_1b
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;->getBack()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;

    move-result-object p0

    :goto_1f
    if-eqz p0, :cond_3b

    .line 87
    const-string p1, "monomer_pmaster"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->getMonomer_pmaster()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2e
    const-string p1, "stereo_pmaster"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean$ParameterBlueValueBean;->getStereo_pmaster()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public static getCameraDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;
    .registers 3

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "front"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_15
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->getFront()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1a
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;->getBack()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    move-result-object p0

    return-object p0
.end method

.method public static getFeatureData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    goto/16 :goto_62

    .line 186
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_68

    goto :goto_46

    :sswitch_10
    const-string v0, "fb_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_46

    :cond_19
    const/4 v1, 0x4

    goto :goto_46

    :sswitch_1b
    const-string v0, "mu_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_46

    :cond_24
    const/4 v1, 0x3

    goto :goto_46

    :sswitch_26
    const-string v0, "mu_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v1, 0x2

    goto :goto_46

    :sswitch_31
    const-string v0, "sb_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v1, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v0, "fb_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    const/16 v0, -0x3e8

    packed-switch v1, :pswitch_data_7e

    move p0, v0

    goto :goto_60

    .line 192
    :pswitch_4d
    invoke-static {p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->indexPMasterMakeup(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_60

    .line 198
    :pswitch_52
    invoke-static {p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->indexVideoMakeup(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_60

    .line 195
    :pswitch_57
    invoke-static {p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->indexPMasterSlimBody(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_60

    .line 189
    :pswitch_5c
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->indexFaceBeauty(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    :goto_60
    if-ne p0, v0, :cond_63

    :goto_62
    return-object p3

    .line 206
    :cond_63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_68
    .sparse-switch
        -0x77b3b1b1 -> :sswitch_3c
        -0xff8f31e -> :sswitch_31
        0x10e5a724 -> :sswitch_26
        0x3762a33b -> :sswitch_1b
        0x4ca70738 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_5c
    .end packed-switch
.end method

.method public static getFunctionData(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;
    .registers 4

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_42

    :sswitch_c
    const-string v0, "fb_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "mu_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "mu_video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "sb_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "fb_pmaster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_76

    const/4 p0, 0x0

    return-object p0

    .line 109
    :pswitch_47
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getFb_video()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    return-object p0

    .line 103
    :pswitch_4c
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getMu_pmaster()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    return-object p0

    .line 112
    :pswitch_51
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getMu_video()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_56
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getSb_pmaster()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_5b
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getFb_pmaster()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    return-object p0

    :sswitch_data_60
    .sparse-switch
        -0x77b3b1b1 -> :sswitch_38
        -0xff8f31e -> :sswitch_2d
        0x10e5a724 -> :sswitch_22
        0x3762a33b -> :sswitch_17
        0x4ca70738 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
    .end packed-switch
.end method

.method public static getRaceByTypeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_46

    goto :goto_37

    :sswitch_c
    const-string v0, "B_common"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "B_southasia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 359
    :goto_37
    const-string p0, "race_A"

    packed-switch v1, :pswitch_data_58

    return-object p0

    .line 348
    :pswitch_3d
    const-string p0, "race_B"

    return-object p0

    .line 354
    :pswitch_40
    const-string p0, "race_C"

    :pswitch_42
    return-object p0

    .line 351
    :pswitch_43
    const-string p0, "race_D"

    return-object p0

    :sswitch_data_46
    .sparse-switch
        -0x5755ffa6 -> :sswitch_2d
        0x41 -> :sswitch_22
        0x43 -> :sswitch_17
        0x18bcb888 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_40
        :pswitch_3d
    .end packed-switch
.end method

.method public static getRaceData(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)Ljava/util/List;
    .registers 4

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_70

    goto :goto_4d

    :pswitch_c
    const-string v0, "race_F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_4d

    :cond_15
    const/4 v1, 0x5

    goto :goto_4d

    :pswitch_17
    const-string v0, "race_E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_4d

    :cond_20
    const/4 v1, 0x4

    goto :goto_4d

    :pswitch_22
    const-string v0, "race_D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_4d

    :cond_2b
    const/4 v1, 0x3

    goto :goto_4d

    :pswitch_2d
    const-string v0, "race_C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_4d

    :cond_36
    const/4 v1, 0x2

    goto :goto_4d

    :pswitch_38
    const-string v0, "race_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_4d

    :cond_41
    const/4 v1, 0x1

    goto :goto_4d

    :pswitch_43
    const-string v0, "race_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    packed-switch v1, :pswitch_data_80

    const/4 p0, 0x0

    return-object p0

    .line 172
    :pswitch_52
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_F()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_57
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_E()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_5c
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_D()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 163
    :pswitch_61
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_C()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_66
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_B()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 157
    :pswitch_6b
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;->getRace_A()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_70
    .packed-switch -0x37f219ad
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_22
        :pswitch_17
        :pswitch_c
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method public static getSexDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;
    .registers 4

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_40

    goto :goto_2c

    :pswitch_c
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :pswitch_17
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :pswitch_22
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_4a

    const/4 p0, 0x0

    return-object p0

    .line 142
    :pswitch_31
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->getFemale()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_36
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->getMale()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    move-result-object p0

    return-object p0

    .line 145
    :pswitch_3b
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;->getUnknow()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    move-result-object p0

    return-object p0

    :pswitch_data_40
    .packed-switch 0x30
        :pswitch_22
        :pswitch_17
        :pswitch_c
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method public static indexFaceBeauty(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .registers 14

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_10c

    goto/16 :goto_7d

    :sswitch_17
    const-string v0, "five_senses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_7d

    :cond_21
    move v10, v1

    goto/16 :goto_7d

    :sswitch_24
    const-string v0, "nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_7d

    :cond_2e
    move v10, v2

    goto :goto_7d

    :sswitch_30
    const-string v0, "head"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_7d

    :cond_39
    move v10, v3

    goto :goto_7d

    :sswitch_3b
    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_7d

    :cond_44
    move v10, v4

    goto :goto_7d

    :sswitch_46
    const-string v0, "eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_7d

    :cond_4f
    move v10, v5

    goto :goto_7d

    :sswitch_51
    const-string v0, "cuttingface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_7d

    :cond_5a
    move v10, v6

    goto :goto_7d

    :sswitch_5c
    const-string v0, "muscle_care"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_7d

    :cond_65
    move v10, v7

    goto :goto_7d

    :sswitch_67
    const-string/jumbo v0, "whiten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_7d

    :cond_71
    move v10, v8

    goto :goto_7d

    :sswitch_73
    const-string v0, "soften"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_7d

    :cond_7c
    move v10, v9

    :goto_7d
    packed-switch v10, :pswitch_data_132

    const/16 p0, -0x3e8

    return p0

    .line 330
    :pswitch_83
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 327
    :pswitch_8e
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 321
    :pswitch_99
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 309
    :pswitch_a4
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 306
    :pswitch_af
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 324
    :pswitch_ba
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 333
    :pswitch_c5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 312
    :pswitch_d0
    const-string p1, "fb_pmaster"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_db

    const/16 p0, 0xe

    goto :goto_dd

    :cond_db
    const/16 p0, 0x9

    .line 314
    :goto_dd
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz p1, :cond_f6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p0, :cond_f6

    .line 315
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 317
    :cond_f6
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 303
    :pswitch_101
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :sswitch_data_10c
    .sparse-switch
        -0x357661ad -> :sswitch_73
        -0x2f04469b -> :sswitch_67
        -0x2b594ee1 -> :sswitch_5c
        -0x10f4dd73 -> :sswitch_51
        0x18a31 -> :sswitch_46
        0x2fd65d -> :sswitch_3b
        0x30cde0 -> :sswitch_30
        0x33afd3 -> :sswitch_24
        0x4410ccb2 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_101
        :pswitch_d0
        :pswitch_c5
        :pswitch_ba
        :pswitch_af
        :pswitch_a4
        :pswitch_99
        :pswitch_8e
        :pswitch_83
    .end packed-switch
.end method

.method public static indexPMasterMakeup(Ljava/lang/String;Ljava/util/List;)I
    .registers 11

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_5f

    :sswitch_13
    const-string v0, "style_06"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_5f

    :cond_1c
    move v8, v1

    goto :goto_5f

    :sswitch_1e
    const-string v0, "style_05"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_5f

    :cond_27
    move v8, v2

    goto :goto_5f

    :sswitch_29
    const-string v0, "style_04"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_5f

    :cond_32
    move v8, v3

    goto :goto_5f

    :sswitch_34
    const-string v0, "style_03"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_5f

    :cond_3d
    move v8, v4

    goto :goto_5f

    :sswitch_3f
    const-string v0, "style_02"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_5f

    :cond_48
    move v8, v5

    goto :goto_5f

    :sswitch_4a
    const-string v0, "style_01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_5f

    :cond_53
    move v8, v6

    goto :goto_5f

    :sswitch_55
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_5f

    :cond_5e
    move v8, v7

    :goto_5f
    packed-switch v8, :pswitch_data_d0

    const/16 p0, -0x3e8

    return p0

    .line 291
    :pswitch_65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 288
    :pswitch_70
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 285
    :pswitch_7b
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 282
    :pswitch_86
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 279
    :pswitch_91
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 276
    :pswitch_9c
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 273
    :pswitch_a7
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :sswitch_data_b2
    .sparse-switch
        0xc28 -> :sswitch_55
        0x7715a34f -> :sswitch_4a
        0x7715a350 -> :sswitch_3f
        0x7715a351 -> :sswitch_34
        0x7715a352 -> :sswitch_29
        0x7715a353 -> :sswitch_1e
        0x7715a354 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9c
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_70
        :pswitch_65
    .end packed-switch
.end method

.method public static indexPMasterSlimBody(Ljava/lang/String;Ljava/util/List;)I
    .registers 11

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_b4

    goto :goto_60

    :sswitch_13
    const-string v0, "bodySlim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_60

    :cond_1c
    move v8, v1

    goto :goto_60

    :sswitch_1e
    const-string v0, "headShrink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_60

    :cond_27
    move v8, v2

    goto :goto_60

    :sswitch_29
    const-string v0, "legLengthen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_60

    :cond_32
    move v8, v3

    goto :goto_60

    :sswitch_34
    const-string v0, "legSlim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_60

    :cond_3d
    move v8, v4

    goto :goto_60

    :sswitch_3f
    const-string v0, "buttPlump"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_60

    :cond_48
    move v8, v5

    goto :goto_60

    :sswitch_4a
    const-string v0, "shoulderSlim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_60

    :cond_53
    move v8, v6

    goto :goto_60

    :sswitch_55
    const-string/jumbo v0, "waistSlim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto :goto_60

    :cond_5f
    move v8, v7

    :goto_60
    packed-switch v8, :pswitch_data_d2

    const/16 p0, -0x3e8

    return p0

    .line 243
    :pswitch_66
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 246
    :pswitch_71
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 261
    :pswitch_7c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 258
    :pswitch_87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 255
    :pswitch_92
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 249
    :pswitch_9d
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 252
    :pswitch_a8
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x3aa8c523 -> :sswitch_55
        -0x2f75f103 -> :sswitch_4a
        -0x104c8f7 -> :sswitch_3f
        0x34d486b -> :sswitch_34
        0x50433e3d -> :sswitch_29
        0x56a81809 -> :sswitch_1e
        0x657bf5ff -> :sswitch_13
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_9d
        :pswitch_92
        :pswitch_87
        :pswitch_7c
        :pswitch_71
        :pswitch_66
    .end packed-switch
.end method

.method public static indexVideoMakeup(Ljava/lang/String;Ljava/util/List;)I
    .registers 11

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_5f

    :sswitch_13
    const-string v0, "style_06"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_5f

    :cond_1c
    move v8, v1

    goto :goto_5f

    :sswitch_1e
    const-string v0, "style_05"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_5f

    :cond_27
    move v8, v2

    goto :goto_5f

    :sswitch_29
    const-string v0, "style_04"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_5f

    :cond_32
    move v8, v3

    goto :goto_5f

    :sswitch_34
    const-string v0, "style_03"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_5f

    :cond_3d
    move v8, v4

    goto :goto_5f

    :sswitch_3f
    const-string v0, "style_02"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_5f

    :cond_48
    move v8, v5

    goto :goto_5f

    :sswitch_4a
    const-string v0, "style_01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_5f

    :cond_53
    move v8, v6

    goto :goto_5f

    :sswitch_55
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_5f

    :cond_5e
    move v8, v7

    :goto_5f
    packed-switch v8, :pswitch_data_d0

    const/16 p0, -0x3e8

    return p0

    .line 231
    :pswitch_65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 228
    :pswitch_70
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 225
    :pswitch_7b
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 222
    :pswitch_86
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 219
    :pswitch_91
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 216
    :pswitch_9c
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 213
    :pswitch_a7
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :sswitch_data_b2
    .sparse-switch
        0xc28 -> :sswitch_55
        0x7715a34f -> :sswitch_4a
        0x7715a350 -> :sswitch_3f
        0x7715a351 -> :sswitch_34
        0x7715a352 -> :sswitch_29
        0x7715a353 -> :sswitch_1e
        0x7715a354 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9c
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_70
        :pswitch_65
    .end packed-switch
.end method
