.class public Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectInfo"
.end annotation


# instance fields
.field private box:Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

.field private label:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBox()Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->box:Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

    return-object p0
.end method

.method public getLabel()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->label:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectInfo{label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->label:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->box:Lcom/effectsar/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
