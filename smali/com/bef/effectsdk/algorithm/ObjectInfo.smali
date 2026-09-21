.class public Lcom/bef/effectsdk/algorithm/ObjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/amazing/annotation/EffectKeep;
.end annotation


# instance fields
.field private bbox_bottom:I

.field private bbox_left:I

.field private bbox_right:I

.field private bbox_top:I

.field private label:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    .line 17
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 18
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 19
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 20
    iput v0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    .line 25
    iput p2, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 26
    iput p3, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 27
    iput p4, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 28
    iput p5, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method


# virtual methods
.method public getBBoxBottom()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return p0
.end method

.method public getBBoxLeft()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    return p0
.end method

.method public getBBoxRight()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    return p0
.end method

.method public getBboxTop()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    return p0
.end method

.method public getLabel()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    return p0
.end method

.method public logData()V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectInfo label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bbox_bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EffectSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBBox(IIII)V
    .registers 5

    .line 36
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_left:I

    .line 37
    iput p2, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_top:I

    .line 38
    iput p3, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_right:I

    .line 39
    iput p4, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->bbox_bottom:I

    return-void
.end method

.method public setLabel(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/bef/effectsdk/algorithm/ObjectInfo;->label:I

    return-void
.end method
