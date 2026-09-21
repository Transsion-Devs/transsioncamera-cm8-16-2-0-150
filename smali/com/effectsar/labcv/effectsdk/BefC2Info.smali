.class public Lcom/effectsar/labcv/effectsdk/BefC2Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;
    }
.end annotation


# instance fields
.field items:[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

.field n_classes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    return-object p0
.end method

.method public getN_classes()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->n_classes:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefC2Info{n_classes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->n_classes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    .line 41
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topN(I)[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;
    .registers 8

    .line 21
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    new-instance v1, Lcom/effectsar/labcv/effectsdk/BefC2Info$1;

    invoke-direct {v1, p0}, Lcom/effectsar/labcv/effectsdk/BefC2Info$1;-><init>(Lcom/effectsar/labcv/effectsdk/BefC2Info;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, p1, :cond_25

    .line 30
    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    aget-object v3, v3, v2

    iget v4, v3, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->confidence:F

    iget v5, v3, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->thres:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_22

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 34
    :cond_25
    new-array p0, v1, [Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    return-object p0
.end method
