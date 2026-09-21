.class public Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;
.super Lcom/ss/ugc/effectplatform/model/NetResponseChecker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;,
        Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/ugc/effectplatform/model/NetResponseChecker;"
    }
.end annotation


# instance fields
.field private data:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

.field private isFromCache:Z

.field private message:Ljava/lang/String;

.field private status_code:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->data:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->message:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->status_code:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_f

    .line 13
    new-instance v0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;-><init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_f
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_14

    const/4 p2, 0x0

    :cond_14
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_19

    const/4 p3, 0x0

    .line 15
    :cond_19
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;-><init>(Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 71
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getEffect_list()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 72
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final getCollection_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getCollection()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->data:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    return-object p0
.end method

.method public final getEffect_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getEffects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getRecId()Ljava/lang/String;
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getRecId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getStatus_code()I

    move-result p0

    return p0
.end method

.method public getStatus_code()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->status_code:I

    return p0
.end method

.method public getUrlPrefix()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getUrl_prefix()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isFromCache()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->isFromCache:Z

    return p0
.end method

.method public final setCollection_list(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->setCollection(Ljava/util/List;)V

    return-void
.end method

.method public setData(Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->data:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    return-void
.end method

.method public final setEffect_list(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->setEffects(Ljava/util/List;)V

    return-void
.end method

.method public final setFromCache(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->isFromCache:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setRecId(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->setRecId(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setStatus_code(I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->status_code:I

    return-void
.end method

.method public setUrlPrefix(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->setUrl_prefix(Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public verifySign()Z
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getCollection()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 89
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 93
    :cond_26
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->getEffects()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4b

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 94
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_38

    return v1

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method
