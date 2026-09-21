.class public Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "SourceFile"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method protected getValue(Ljava/lang/String;)I
    .registers 4

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_82

    goto/16 :goto_65

    :sswitch_e
    const-string p0, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_65

    :cond_17
    const/4 v1, 0x7

    goto :goto_65

    :sswitch_19
    const-string p0, "ai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_65

    :cond_22
    const/4 v1, 0x6

    goto :goto_65

    :sswitch_24
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_65

    :cond_2d
    const/4 v1, 0x5

    goto :goto_65

    :sswitch_2f
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_65

    :cond_38
    const/4 v1, 0x4

    goto :goto_65

    :sswitch_3a
    const-string p0, "4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_65

    :cond_43
    const/4 v1, 0x3

    goto :goto_65

    :sswitch_45
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_65

    :cond_4e
    const/4 v1, 0x2

    goto :goto_65

    :sswitch_50
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_65

    :cond_59
    const/4 v1, 0x1

    goto :goto_65

    :sswitch_5b
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_65

    :cond_64
    move v1, v0

    :goto_65
    packed-switch v1, :pswitch_data_a4

    return v0

    :pswitch_69
    const/16 p0, 0x1a

    return p0

    :pswitch_6c
    const/16 p0, 0x1b

    return p0

    :pswitch_6f
    const/16 p0, 0x21

    return p0

    :pswitch_72
    const/16 p0, 0x20

    return p0

    :pswitch_75
    const/16 p0, 0x1f

    return p0

    :pswitch_78
    const/16 p0, 0x1e

    return p0

    :pswitch_7b
    const/16 p0, 0x1d

    return p0

    :pswitch_7e
    const/16 p0, 0x1c

    return p0

    nop

    :sswitch_data_82
    .sparse-switch
        0x31 -> :sswitch_5b
        0x32 -> :sswitch_50
        0x33 -> :sswitch_45
        0x34 -> :sswitch_3a
        0x35 -> :sswitch_2f
        0x36 -> :sswitch_24
        0xc28 -> :sswitch_19
        0x1ad6f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method protected getValue()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-object p0
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method
