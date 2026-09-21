.class public Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;
.super Lcom/ss/ugc/effectplatform/model/NetResponseChecker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/ugc/effectplatform/model/NetResponseChecker;"
    }
.end annotation


# instance fields
.field private bind_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status_code:I

.field private url_prefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "url_prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind_effects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->url_prefix:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->bind_effects:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->collection:Ljava/util/List;

    iput p4, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->status_code:I

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->message:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->data:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_9

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_12

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1b

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_20

    const/4 p4, 0x0

    :cond_20
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_25

    const/4 p5, 0x0

    :cond_25
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2e

    .line 23
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getBind_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->bind_effects:Ljava/util/List;

    return-object p0
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

    .line 33
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->collection:Ljava/util/List;

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

    .line 27
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->getResponseData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResponseData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->getEffect_list()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->getStatus_code()I

    move-result p0

    return p0
.end method

.method public getStatus_code()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->status_code:I

    return p0
.end method

.method public getUrl_prefix()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public setBind_effects(Ljava/util/List;)V
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->bind_effects:Ljava/util/List;

    return-void
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

    .line 35
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->collection:Ljava/util/List;

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

    .line 29
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus_code(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->status_code:I

    return-void
.end method

.method public setUrl_prefix(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public verifySign()Z
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->collection:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 52
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 56
    :cond_1e
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->getBind_effects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 57
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 61
    :cond_3d
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListResponse;->data:Ljava/util/List;

    if-eqz p0, :cond_5a

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 62
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_47

    return v1

    :cond_5a
    const/4 p0, 0x1

    return p0
.end method
