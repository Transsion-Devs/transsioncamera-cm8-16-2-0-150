.class public Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PARAMETER_BATTERY:I = 0x4

.field public static final PARAMETER_CLOCK:I = 0x10

.field public static final PARAMETER_NONE:I = 0x0

.field public static final PARAMETER_TEMPERATURE:I = 0x8

.field public static final PARAMETER_TIME:I = 0x1

.field public static final PARAMETER_VOLUME:I = 0x20

.field public static final PARAMETER_WEATHER:I = 0x2


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mColor:I

.field private final mCreatedTime:J

.field public mCustomFilePath:Ljava/lang/String;

.field private final mEffectId:I

.field private final mEffectParameter:I

.field private final mIsHidden:Z

.field private final mIsPrebuilt:Z

.field private final mIsSupportColor:Z

.field private final mIsUnlocked:Z

.field private mPara:I

.field private mPara1:I

.field private mPara2:I

.field private mPara3:I

.field private mPlayTime:I

.field private mType:I


# direct methods
.method public constructor <init>(IIZIZZZJLandroid/os/Bundle;)V
    .registers 12

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    .line 38
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    .line 41
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    .line 42
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    .line 43
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    .line 44
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    .line 58
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    .line 59
    iput p2, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    .line 60
    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    .line 61
    iput p4, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    .line 62
    iput-boolean p5, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    .line 63
    iput-boolean p6, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    .line 64
    iput-boolean p7, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    .line 65
    iput-wide p8, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    .line 66
    iput-object p10, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    return p0
.end method

.method public getCreatedTime()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    return-wide v0
.end method

.method public getCustomFilePath()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectId()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    return p0
.end method

.method public getEffectParameter()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    return p0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPara()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    return p0
.end method

.method public getPara1()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    return p0
.end method

.method public getPara2()I
    .registers 1

    .line 150
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    return p0
.end method

.method public getPara3()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    return p0
.end method

.method public getPlayTime()I
    .registers 1

    .line 118
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    return p0
.end method

.method public isHidden()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    return p0
.end method

.method public isPrebuilt()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    return p0
.end method

.method public isSupportColor()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    return p0
.end method

.method public isUnlocked()Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    return p0
.end method

.method public setColor(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    return-void
.end method

.method public setCustomFilePath(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    return-void
.end method

.method public setPara(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    return-void
.end method

.method public setPara1(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    return-void
.end method

.method public setPara2(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    return-void
.end method

.method public setPara3(I)V
    .registers 2

    .line 162
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    return-void
.end method

.method public setPlayTime(I)V
    .registers 2

    .line 122
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v1, "TranEffectConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", mIsSupportColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", mEffectParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", mIsUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", mIsHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", mIsPrebuilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", mCreatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", mCustomFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", mPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", mPara="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", mPara1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", mPara2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", mPara3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_c4

    .line 187
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c9

    .line 189
    :cond_c4
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_c9
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
