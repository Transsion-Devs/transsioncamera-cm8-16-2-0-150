.class public Lcom/effectsar/labcv/effectsdk/BefC1Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;
    }
.end annotation


# instance fields
.field items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefC1Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    return-object p0
.end method

.method public setItems([Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefC1Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefC1Info{items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefC1Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topN(I)[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;
    .registers 7

    .line 21
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefC1Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    new-instance v1, Lcom/effectsar/labcv/effectsdk/BefC1Info$1;

    invoke-direct {v1, p0}, Lcom/effectsar/labcv/effectsdk/BefC1Info$1;-><init>(Lcom/effectsar/labcv/effectsdk/BefC1Info;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, p1, :cond_21

    .line 37
    iget-object v3, p0, Lcom/effectsar/labcv/effectsdk/BefC1Info;->items:[Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->satisfied:Z

    if-eqz v4, :cond_21

    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 44
    :cond_21
    new-array p0, v1, [Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/effectsar/labcv/effectsdk/BefC1Info$BefC1CategoryItem;

    return-object p0
.end method
