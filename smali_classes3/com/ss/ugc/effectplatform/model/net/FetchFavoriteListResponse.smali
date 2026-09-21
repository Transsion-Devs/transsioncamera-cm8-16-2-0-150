.class public Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;
.super Lcom/ss/ugc/effectplatform/model/NetResponseChecker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/ugc/effectplatform/model/NetResponseChecker;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;",
            ">;"
        }
    .end annotation
.end field

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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;-><init>(Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->message:Ljava/lang/String;

    iput p3, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->status_code:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_9

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_e

    const/4 p2, 0x0

    :cond_e
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    const/4 p3, 0x0

    .line 22
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 59
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final getCollection_effects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 40
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->getCollection()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 39
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public final getEffect_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 28
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->getEffects()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 27
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getStatus_code()I

    move-result p0

    return p0
.end method

.method public getStatus_code()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->status_code:I

    return p0
.end method

.method public final setCollection_effects(Ljava/util/List;)V
    .registers 11
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

    .line 43
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 44
    :cond_14
    new-instance v1, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v1}, [Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->setData(Ljava/util/List;)V

    .line 46
    :cond_2c
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->setCollection(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    return-void
.end method

.method public final setEffect_list(Ljava/util/List;)V
    .registers 11
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

    .line 31
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 32
    :cond_14
    new-instance v1, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v1}, [Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->setData(Ljava/util/List;)V

    .line 34
    :cond_2c
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->setEffects(Ljava/util/List;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus_code(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->status_code:I

    return-void
.end method

.method public verifySign()Z
    .registers 5

    .line 67
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_76

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;

    .line 68
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->getBind_effects()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    check-cast v1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 69
    invoke-static {v3}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v3

    if-nez v3, :cond_25

    return v2

    .line 73
    :cond_38
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->getEffects()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_57

    check-cast v1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 74
    invoke-static {v3}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v3

    if-nez v3, :cond_44

    return v2

    .line 78
    :cond_57
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/FetchFavoriteListResponse$Data;->getCollection()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 79
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_76
    const/4 p0, 0x1

    return p0
.end method
