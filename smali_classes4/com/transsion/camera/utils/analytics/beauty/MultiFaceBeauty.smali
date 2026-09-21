.class public Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "SourceFile"


# instance fields
.field private mCuttingFace:I

.field private mFace:I

.field private mHair:I

.field private mMakeUp:I

.field private mMode:Ljava/lang/String;

.field private mNose:I

.field private mSoften:I

.field private mThreeDimensional:I

.field private mWhiten:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    .line 24
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    .line 27
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    .line 28
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    .line 29
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    .line 30
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    .line 31
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    .line 32
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    .line 33
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v1, "multifb_custom_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearValue()V
    .registers 2

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    .line 68
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    .line 69
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    return-void
.end method

.method protected getValue(Ljava/lang/String;)I
    .registers 4

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_82

    goto/16 :goto_65

    :sswitch_e
    const-string p0, "multifb_custom_1_1_1_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_65

    :cond_17
    const/4 v1, 0x7

    goto :goto_65

    :sswitch_19
    const-string p0, "multifb_custom_1_1_1_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_65

    :cond_22
    const/4 v1, 0x6

    goto :goto_65

    :sswitch_24
    const-string p0, "multifb_custom_1_1_0_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_65

    :cond_2d
    const/4 v1, 0x5

    goto :goto_65

    :sswitch_2f
    const-string p0, "multifb_custom_1_0_0_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_65

    :cond_38
    const/4 v1, 0x4

    goto :goto_65

    :sswitch_3a
    const-string p0, "multifb_pre3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_65

    :cond_43
    const/4 v1, 0x3

    goto :goto_65

    :sswitch_45
    const-string p0, "multifb_pre2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_65

    :cond_4e
    const/4 v1, 0x2

    goto :goto_65

    :sswitch_50
    const-string p0, "multifb_pre1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_65

    :cond_59
    const/4 v1, 0x1

    goto :goto_65

    :sswitch_5b
    const-string p0, "multifb_aiv2"

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
    const/16 p0, 0x19

    return p0

    :pswitch_6c
    const/16 p0, 0x18

    return p0

    :pswitch_6f
    const/16 p0, 0x17

    return p0

    :pswitch_72
    const/16 p0, 0x16

    return p0

    :pswitch_75
    const/16 p0, 0x15

    return p0

    :pswitch_78
    const/16 p0, 0x14

    return p0

    :pswitch_7b
    const/16 p0, 0x13

    return p0

    :pswitch_7e
    const/16 p0, 0x12

    return p0

    nop

    :sswitch_data_82
    .sparse-switch
        -0x131e8512 -> :sswitch_5b
        -0x131793c8 -> :sswitch_50
        -0x131793c7 -> :sswitch_45
        -0x131793c6 -> :sswitch_3a
        0xdb938c0 -> :sswitch_2f
        0xdc75041 -> :sswitch_24
        0xdc75402 -> :sswitch_19
        0xdc75403 -> :sswitch_e
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
    .registers 3

    .line 76
    const-string v0, "custom"

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multifb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    return-void
.end method
