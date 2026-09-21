.class public final Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;
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
.field private arithmetics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private final preloading_effect_id_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preloading_model_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 11
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
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "preloading_effect_id_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind_effects"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url_prefix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->preloading_effect_id_list:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->collection:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->bind_effects:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->url_prefix:Ljava/util/List;

    iput p6, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->status_code:I

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->message:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->preloading_model_list:Ljava/util/List;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->arithmetics:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :cond_c
    move-object v1, p2

    :goto_d
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_17

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_18

    :cond_17
    move-object v2, p3

    :goto_18
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_22

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_23

    :cond_22
    move-object v3, p4

    :goto_23
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_2d

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2e

    :cond_2d
    move-object v4, p5

    :goto_2e
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_34

    const/4 v5, 0x0

    goto :goto_35

    :cond_34
    move v5, p6

    :goto_35
    and-int/lit8 v6, v0, 0x40

    const/4 v7, 0x0

    if-eqz v6, :cond_3c

    move-object v6, v7

    goto :goto_3e

    :cond_3c
    move-object/from16 v6, p7

    :goto_3e
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_44

    move-object v8, v7

    goto :goto_46

    :cond_44
    move-object/from16 v8, p8

    :goto_46
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5a

    move-object/from16 p11, v7

    :goto_4c
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move-object p6, v3

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v8

    goto :goto_5d

    :cond_5a
    move-object/from16 p11, p9

    goto :goto_4c

    .line 21
    :goto_5d
    invoke-direct/range {p2 .. p11}, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getArithmetics()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->arithmetics:Ljava/util/List;

    return-object p0
.end method

.method public final getBind_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->bind_effects:Ljava/util/List;

    return-object p0
.end method

.method public final getCollection()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->collection:Ljava/util/List;

    return-object p0
.end method

.method public final getData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreloadEffectList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 41
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_e
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->collection:Ljava/util/List;

    if-eqz v1, :cond_17

    .line 44
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->bind_effects:Ljava/util/List;

    if-eqz p0, :cond_20

    .line 47
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    return-object v0
.end method

.method public final getPreloading_effect_id_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->preloading_effect_id_list:Ljava/util/List;

    return-object p0
.end method

.method public final getPreloading_model_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->preloading_model_list:Ljava/util/List;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->status_code:I

    return p0
.end method

.method public final getUrl_prefix()Ljava/util/List;
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
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public final setArithmetics(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->arithmetics:Ljava/util/List;

    return-void
.end method

.method public final setBind_effects(Ljava/util/List;)V
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

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public final setCollection(Ljava/util/List;)V
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

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->collection:Ljava/util/List;

    return-void
.end method

.method public final setData(Ljava/util/List;)V
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

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public final setPreloading_model_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->preloading_model_list:Ljava/util/List;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->status_code:I

    return-void
.end method

.method public final setUrl_prefix(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public verifySign()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->data:Ljava/util/List;

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

    .line 54
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 58
    :cond_1e
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->collection:Ljava/util/List;

    if-eqz v0, :cond_3b

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 59
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    .line 63
    :cond_3b
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/EffectListPreloadResponse;->bind_effects:Ljava/util/List;

    if-eqz p0, :cond_58

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 64
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_45

    return v1

    :cond_58
    const/4 p0, 0x1

    return p0
.end method
