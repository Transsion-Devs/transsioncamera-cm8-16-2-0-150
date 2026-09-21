.class public Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;
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

.field private cursor:I

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private has_more:Z

.field private message:Ljava/lang/String;

.field private status_code:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 0
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;-><init>(ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
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
            ")V"
        }
    .end annotation

    const-string v0, "effects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind_effects"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->has_more:Z

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->cursor:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->effects:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->collection:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->bind_effects:Ljava/util/List;

    iput p6, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->status_code:I

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_14

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_1d

    .line 24
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_26

    .line 25
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_2b

    move p6, v0

    :cond_2b
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_30

    const/4 p7, 0x0

    .line 27
    :cond_30
    invoke-direct/range {p0 .. p7}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;-><init>(ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->getEffect_list()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

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

    .line 25
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->bind_effects:Ljava/util/List;

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

    .line 36
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->collection:Ljava/util/List;

    return-object p0
.end method

.method public getCursor()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->cursor:I

    return p0
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

    .line 30
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getHas_more()Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->has_more:Z

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 50
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->getStatus_code()I

    move-result p0

    return p0
.end method

.method public getStatus_code()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->status_code:I

    return p0
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

    .line 25
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->bind_effects:Ljava/util/List;

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

    .line 38
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->collection:Ljava/util/List;

    return-void
.end method

.method public setCursor(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->cursor:I

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

    .line 32
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->effects:Ljava/util/List;

    return-void
.end method

.method public setHas_more(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->has_more:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus_code(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->status_code:I

    return-void
.end method

.method public verifySign()Z
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->collection:Ljava/util/List;

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

    .line 59
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 63
    :cond_1e
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->getBind_effects()Ljava/util/List;

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

    .line 64
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 68
    :cond_3d
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponse;->effects:Ljava/util/List;

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

    .line 69
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_47

    return v1

    :cond_5a
    const/4 p0, 0x1

    return p0
.end method
