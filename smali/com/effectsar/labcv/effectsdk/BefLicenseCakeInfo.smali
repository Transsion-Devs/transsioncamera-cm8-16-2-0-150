.class public Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;,
        Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;
    }
.end annotation


# instance fields
.field private licenseCakeInfos:[Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

.field private licenseCakeNum:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLicenseCakeInfos()[Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    return-object p0
.end method

.method public getLicenseCakeNum()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    return p0
.end method

.method public setLicenseCakeInfos([Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    return-void
.end method

.method public setLicenseCakeNum(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefLicenseCakeInfo{licenseCakeInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    .line 149
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", licenseCakeNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
