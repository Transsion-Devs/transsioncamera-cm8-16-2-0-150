.class public Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicSkInfo"
.end annotation


# instance fields
.field private id:I

.field private keyPoints:[Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;

.field private rect:Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->id:I

    return p0
.end method

.method public getKeyPoints()[Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->keyPoints:[Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;

    return-object p0
.end method

.method public getRect()Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->rect:Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;

    return-object p0
.end method

.method public setId(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->id:I

    return-void
.end method

.method public setKeyPoints([Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->keyPoints:[Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;

    return-void
.end method

.method public setRect(Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->rect:Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicSkInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->rect:Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;->keyPoints:[Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefKeyPoint;

    .line 108
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
