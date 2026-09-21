.class public Lcom/ss/android/medialib/player/EffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/player/EffectConfig$EffectBuildChainAB;,
        Lcom/ss/android/medialib/player/EffectConfig$Effect;
    }
.end annotation


# instance fields
.field deviceName:Ljava/lang/String;

.field effect8File:Ljava/lang/String;

.field effect9File:Ljava/lang/String;

.field effectBuildChainType:I

.field effectFileInfos:[Lcom/ss/android/medialib/model/EffectFileInfo;

.field effectModelDir:Ljava/lang/String;

.field effectModels:[Lcom/ss/android/medialib/model/EffectModel;

.field effectType:I

.field filterIntensity:F

.field leftFilter:Ljava/lang/String;

.field pos:F

.field rightFilter:Ljava/lang/String;

.field snowflakeFile:Ljava/lang/String;

.field vertigoFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectBuildChainType:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/ss/android/medialib/player/EffectConfig;->filterIntensity:F

    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->deviceName:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public getEffect8File()Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect8File:Ljava/lang/String;

    return-object p0
.end method

.method public getEffect9File()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect9File:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectBuildChainType()I
    .registers 1

    .line 289
    iget p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectBuildChainType:I

    return p0
.end method

.method public getEffectFileInfos()[Lcom/ss/android/medialib/model/EffectFileInfo;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectFileInfos:[Lcom/ss/android/medialib/model/EffectFileInfo;

    return-object p0
.end method

.method public getEffectModelDir()Ljava/lang/String;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModelDir:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public getEffectModels()[Lcom/ss/android/medialib/model/EffectModel;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    return-object p0
.end method

.method public getEffectType()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectType:I

    return p0
.end method

.method public getFilterIntensity()F
    .registers 1

    .line 285
    iget p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->filterIntensity:F

    return p0
.end method

.method public getLeftFilter()Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->leftFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()F
    .registers 1

    .line 281
    iget p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->pos:F

    return p0
.end method

.method public getRightFilter()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->rightFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getSnowflakeFile()Ljava/lang/String;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->snowflakeFile:Ljava/lang/String;

    return-object p0
.end method

.method public getVertigoFile()Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/ss/android/medialib/player/EffectConfig;->vertigoFile:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setEffect8File(Ljava/lang/String;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect8File:Ljava/lang/String;

    return-void
.end method

.method public setEffect9File(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect9File:Ljava/lang/String;

    return-void
.end method

.method public setEffectBuildChainType(I)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 211
    iput p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectBuildChainType:I

    return-object p0
.end method

.method public setEffectFileInfos([Lcom/ss/android/medialib/model/EffectFileInfo;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectFileInfos:[Lcom/ss/android/medialib/model/EffectFileInfo;

    return-object p0
.end method

.method public setEffectFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 5

    .line 112
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect8File:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/ss/android/medialib/player/EffectConfig;->effect9File:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/ss/android/medialib/player/EffectConfig;->vertigoFile:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/ss/android/medialib/player/EffectConfig;->snowflakeFile:Ljava/lang/String;

    return-object p0
.end method

.method public setEffectModelDir(Ljava/lang/String;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModelDir:Ljava/lang/String;

    return-object p0
.end method

.method public setEffectModels([III)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 10

    if-nez p1, :cond_3

    return-object p0

    .line 161
    :cond_3
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, 0x1

    .line 162
    new-array v1, v1, [Lcom/ss/android/medialib/model/EffectModel;

    iput-object v1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    .line 164
    new-instance v2, Lcom/ss/android/medialib/model/EffectModel;

    mul-int/lit8 v3, v1, 0x3

    aget v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, p1, v5

    add-int/lit8 v3, v3, 0x2

    aget v3, p1, v3

    invoke-direct {v2, v4, v5, v3}, Lcom/ss/android/medialib/model/EffectModel;-><init>(III)V

    .line 168
    iget-object v3, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 170
    :cond_27
    iget-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    new-instance v1, Lcom/ss/android/medialib/model/EffectModel;

    invoke-direct {v1, p2, p3, p3}, Lcom/ss/android/medialib/model/EffectModel;-><init>(III)V

    aput-object v1, p1, v0

    return-object p0
.end method

.method public setEffectModels([Lcom/ss/android/medialib/model/EffectModel;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    return-object p0
.end method

.method public setEffectModels([Ljava/lang/String;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 9

    if-nez p1, :cond_3

    goto :goto_3d

    .line 136
    :cond_3
    array-length v0, p1

    new-array v0, v0, [Lcom/ss/android/medialib/model/EffectModel;

    iput-object v0, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_3d

    .line 138
    aget-object v2, p1, v1

    if-eqz v2, :cond_3a

    .line 140
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 141
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3a

    .line 142
    new-instance v3, Lcom/ss/android/medialib/model/EffectModel;

    aget-object v4, v2, v0

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v2, v2, v6

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/ss/android/medialib/model/EffectModel;-><init>(III)V

    .line 146
    iget-object v2, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectModels:[Lcom/ss/android/medialib/model/EffectModel;

    aput-object v3, v2, v1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_3d
    :goto_3d
    return-object p0
.end method

.method public setEffectType(I)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 63
    iput p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->effectType:I

    return-object p0
.end method

.method public setFilter(Ljava/lang/String;)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->leftFilter:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->rightFilter:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 75
    iput p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->pos:F

    return-object p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->leftFilter:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/ss/android/medialib/player/EffectConfig;->rightFilter:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/ss/android/medialib/player/EffectConfig;->pos:F

    return-object p0
.end method

.method public setFilterIntensity(F)Lcom/ss/android/medialib/player/EffectConfig;
    .registers 2

    .line 99
    iput p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->filterIntensity:F

    return-object p0
.end method

.method public setSnowflakeFile(Ljava/lang/String;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->snowflakeFile:Ljava/lang/String;

    return-void
.end method

.method public setVertigoFile(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/ss/android/medialib/player/EffectConfig;->vertigoFile:Ljava/lang/String;

    return-void
.end method
