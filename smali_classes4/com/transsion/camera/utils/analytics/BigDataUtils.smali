.class public abstract Lcom/transsion/camera/utils/analytics/BigDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAntivideoValue(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 182
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_36

    goto :goto_2f

    :sswitch_f
    const-string v1, "super"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2f

    :cond_18
    move v4, v2

    goto :goto_2f

    :sswitch_1a
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2f

    :cond_23
    move v4, v3

    goto :goto_2f

    :sswitch_25
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v0

    :goto_2f
    packed-switch v4, :pswitch_data_44

    return v0

    :pswitch_33
    return v2

    :pswitch_34
    return v0

    :pswitch_35
    return v3

    :sswitch_data_36
    .sparse-switch
        0xddf -> :sswitch_25
        0x1ad6f -> :sswitch_1a
        0x68b6f7b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method public static getAsdEnhanceValue(Ljava/lang/String;)I
    .registers 2

    .line 90
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 92
    :cond_a
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public static getFlashValue(Ljava/lang/String;)I
    .registers 2

    .line 115
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_a
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 119
    :cond_14
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x2

    return p0

    .line 121
    :cond_1e
    const-string v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p0, 0x3

    return p0

    .line 123
    :cond_28
    const-string v0, "ringscreenlight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p0, 0x4

    return p0

    .line 125
    :cond_32
    const-string v0, "screenflash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x5

    return p0

    :cond_3c
    const/4 p0, -0x1

    return p0
.end method

.method public static getHdrId(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 441
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_36

    goto :goto_2f

    :sswitch_f
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2f

    :cond_18
    move v4, v2

    goto :goto_2f

    :sswitch_1a
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2f

    :cond_23
    move v4, v3

    goto :goto_2f

    :sswitch_25
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v0

    :goto_2f
    packed-switch v4, :pswitch_data_44

    :pswitch_32
    return v0

    :pswitch_33
    return v3

    :pswitch_34
    return v2

    nop

    :sswitch_data_36
    .sparse-switch
        0xddf -> :sswitch_25
        0x1ad6f -> :sswitch_1a
        0x2dddaf -> :sswitch_f
    .end sparse-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method

.method public static getImageStyleValue(Ljava/lang/String;)I
    .registers 2

    .line 102
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_a
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 106
    :cond_14
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public static getLivePhotoValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 388
    :cond_4
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static getScreenFlashValue(Z)I
    .registers 1

    return p0
.end method

.method public static getSmileValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 166
    :cond_4
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static getSuperNightStable(Ljava/lang/String;)I
    .registers 3

    .line 78
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 80
    :cond_a
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public static getTimerId(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 460
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_42

    goto :goto_3b

    :sswitch_10
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_3b

    :cond_19
    move v5, v2

    goto :goto_3b

    :sswitch_1b
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_3b

    :cond_24
    move v5, v3

    goto :goto_3b

    :sswitch_26
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_3b

    :cond_2f
    move v5, v4

    goto :goto_3b

    :sswitch_31
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v5, v0

    :goto_3b
    packed-switch v5, :pswitch_data_54

    :pswitch_3e
    return v0

    :pswitch_3f
    return v2

    :pswitch_40
    return v3

    :pswitch_41
    return v4

    :sswitch_data_42
    .sparse-switch
        0x33 -> :sswitch_31
        0x35 -> :sswitch_26
        0x61f -> :sswitch_1b
        0x1ad6f -> :sswitch_10
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch
.end method

.method public static getVideoBeautyValue(Ljava/lang/String;)I
    .registers 2

    .line 198
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "video_facebeauty_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static getVideoPortraitValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 211
    :cond_4
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static getVideoQuality(Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 138
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v1, :sswitch_data_5e

    :goto_11
    move p0, v0

    goto :goto_54

    :sswitch_13
    const-string v1, "8_60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_11

    :cond_1c
    move p0, v2

    goto :goto_54

    :sswitch_1e
    const-string v1, "6_60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_11

    :cond_27
    move p0, v3

    goto :goto_54

    :sswitch_29
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_11

    :cond_32
    move p0, v4

    goto :goto_54

    :sswitch_34
    const-string v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_11

    :cond_3d
    move p0, v5

    goto :goto_54

    :sswitch_3f
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_11

    :cond_48
    move p0, v6

    goto :goto_54

    :sswitch_4a
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_11

    :cond_53
    move p0, v7

    :goto_54
    packed-switch p0, :pswitch_data_78

    return v0

    :pswitch_58
    return v2

    :pswitch_59
    return v5

    :pswitch_5a
    return v4

    :pswitch_5b
    return v3

    :pswitch_5c
    return v6

    :pswitch_5d
    return v7

    :sswitch_data_5e
    .sparse-switch
        0x35 -> :sswitch_4a
        0x36 -> :sswitch_3f
        0x38 -> :sswitch_34
        0x620 -> :sswitch_29
        0x19f763 -> :sswitch_1e
        0x1ae021 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch
.end method

.method public static getVideoSpotValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 228
    :cond_4
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static getVideoVideoHdrValue(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 244
    :cond_4
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method
