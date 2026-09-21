.class public abstract Lcom/transsion/camera/utils/SettingInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseGender(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$Gender;
    .registers 3

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_42

    goto :goto_37

    :sswitch_c
    const-string v0, "male"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "female"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_54

    const/4 p0, 0x0

    return-object p0

    .line 15
    :pswitch_3c
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    return-object p0

    .line 18
    :pswitch_3f
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo$Gender;->FEMALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    return-object p0

    :sswitch_data_42
    .sparse-switch
        -0x4c2f64b4 -> :sswitch_2d
        0x31 -> :sswitch_22
        0x32 -> :sswitch_17
        0x33060d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method public static parseGender(Ljava/lang/String;Lcom/transsion/camera/utils/SettingInfo$Gender;)Lcom/transsion/camera/utils/SettingInfo$Gender;
    .registers 2

    .line 25
    invoke-static {p0}, Lcom/transsion/camera/utils/SettingInfoUtils;->parseGender(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$Gender;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method
