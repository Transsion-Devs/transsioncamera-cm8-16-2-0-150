.class public Lcom/effectsar/labcv/effectsdk/BefSkyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hasSky:Z

.field private skyMask:Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasSky()Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->hasSky:Z

    return p0
.end method

.method public getSkyMask()Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->skyMask:Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;

    return-object p0
.end method

.method public setHasSky(Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->hasSky:Z

    return-void
.end method

.method public setSkyMask(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->skyMask:Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefSkyInfo{hasSky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->hasSky:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
