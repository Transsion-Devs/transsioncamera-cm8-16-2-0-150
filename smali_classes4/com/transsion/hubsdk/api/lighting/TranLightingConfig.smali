.class public Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIME_MODE_CUSTOM:I = 0x1

.field public static final TIME_MODE_DEFAULT:I


# instance fields
.field private mBrightness:I

.field public mBundle:Landroid/os/Bundle;

.field public mConfigVersion:I

.field public mCustomEffectVersion:I

.field private mCustomEndHour:I

.field private mCustomEndMinute:I

.field private mCustomStartHour:I

.field private mCustomStartMinute:I

.field public mDoNotDisturb:Z

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsEnable:Z

.field public mLowBattery:Z

.field private final mMaxBrightness:I

.field private final mMinBrightness:I

.field public mPara:I

.field public mPara1:I

.field public mPara2:I

.field public mPara3:I

.field public mSatelliteMode:Z

.field private mSceneConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mStartHour:I

.field private mStartMinute:I

.field private mTimeMode:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;IIIIIII",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    .line 38
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    .line 39
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    .line 40
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    .line 41
    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    if-eqz p1, :cond_11

    goto :goto_16

    .line 54
    :cond_11
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    :goto_16
    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    .line 55
    iput p2, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    .line 56
    iput p3, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    .line 57
    iput p4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    .line 58
    iput p5, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    .line 59
    iput p6, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    .line 60
    iput p7, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    .line 61
    iput p8, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    .line 62
    iput-object p9, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getConfigVersion()I
    .registers 1

    .line 166
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    return p0
.end method

.method public getCustomEffectVersion()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    return p0
.end method

.method public getCustomEndHour()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    return p0
.end method

.method public getCustomEndMinute()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    return p0
.end method

.method public getCustomStartHour()I
    .registers 1

    .line 214
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    return p0
.end method

.method public getCustomStartMinute()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    return p0
.end method

.method public getEndHour()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    return p0
.end method

.method public getEndMinute()I
    .registers 1

    .line 150
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    return p0
.end method

.method public getMaxBrightness()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    return p0
.end method

.method public getMinBrightness()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    return p0
.end method

.method public getPara()I
    .registers 1

    .line 174
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    return p0
.end method

.method public getPara1()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    return p0
.end method

.method public getPara2()I
    .registers 1

    .line 190
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    return p0
.end method

.method public getPara3()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    return p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    return-object p0
.end method

.method public getSceneConfigs()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getStartHour()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    return p0
.end method

.method public getStartMinute()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    return p0
.end method

.method public getTimeMode()I
    .registers 1

    .line 206
    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    return p0
.end method

.method public isDoNotDisturb()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    return p0
.end method

.method public isEnable()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    return p0
.end method

.method public isLowBattery()Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    return p0
.end method

.method public isSatelliteMode()Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    return p0
.end method

.method public setBrightness(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    return-void
.end method

.method public setConfigVersion(I)V
    .registers 2

    .line 170
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    return-void
.end method

.method public setCustomEffectVersion(I)V
    .registers 2

    .line 162
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    return-void
.end method

.method public setCustomEndHour(I)V
    .registers 2

    .line 234
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    return-void
.end method

.method public setCustomEndMinute(I)V
    .registers 2

    .line 242
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    return-void
.end method

.method public setCustomStartHour(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    return-void
.end method

.method public setCustomStartMinute(I)V
    .registers 2

    .line 226
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    return-void
.end method

.method public setEndHour(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    return-void
.end method

.method public setEndMinute(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    return-void
.end method

.method public setPara(I)V
    .registers 2

    .line 178
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    return-void
.end method

.method public setPara1(I)V
    .registers 2

    .line 186
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    return-void
.end method

.method public setPara2(I)V
    .registers 2

    .line 194
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    return-void
.end method

.method public setPara3(I)V
    .registers 2

    .line 202
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    return-void
.end method

.method public setStartHour(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    return-void
.end method

.method public setStartMinute(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    return-void
.end method

.method public setTimeMode(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    const-string v1, "TranLightingConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "mIsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", mCustomEffectVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", mConfigVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, ", mMinBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, ", mLowBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", mDoNotDisturb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ", mSatelliteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ", mStartHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, ", mStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", mEndHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ", mEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", mTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ", mCustomStartHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", mCustomStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ", mCustomEndHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", mCustomEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ", mPara="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", mPara1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", mPara2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", mPara3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", mSceneConfigs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    const-string v2, "null"

    const-string v3, "]"

    if-eqz v1, :cond_12e

    .line 273
    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_131

    .line 275
    const-string v1, ", sceneIds=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 276
    :goto_10f
    iget-object v4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_12a

    if-lez v1, :cond_11e

    .line 278
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_11e
    iget-object v4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    .line 282
    :cond_12a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    .line 285
    :cond_12e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_131
    :goto_131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_145

    .line 290
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_148

    .line 292
    :cond_145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_148
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
