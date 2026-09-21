.class public Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;
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
.field private has_more:Z

.field private message:Ljava/lang/String;

.field private next_cursor:I

.field private reward_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
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

    invoke-direct/range {v0 .. v8}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;-><init>(Ljava/util/List;ILjava/lang/String;ZILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/String;ZILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "url_prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reward_effects"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->url_prefix:Ljava/util/List;

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->status_code:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->message:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->has_more:Z

    iput p5, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->next_cursor:I

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->reward_effects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;ZILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_9

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_f

    move p2, v0

    :cond_f
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_14

    const/4 p3, 0x0

    :cond_14
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_19

    move p4, v0

    :cond_19
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    move p5, v0

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_27

    .line 19
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;-><init>(Ljava/util/List;ILjava/lang/String;ZILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getHas_more()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->has_more:Z

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getNext_cursor()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->next_cursor:I

    return p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReward_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->reward_effects:Ljava/util/List;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->getStatus_code()I

    move-result p0

    return p0
.end method

.method public getStatus_code()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->status_code:I

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

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public setHas_more(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->has_more:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setNext_cursor(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->next_cursor:I

    return-void
.end method

.method public setReward_effects(Ljava/util/List;)V
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

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->reward_effects:Ljava/util/List;

    return-void
.end method

.method public setStatus_code(I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->status_code:I

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

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public verifySign()Z
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/QueryRewardEffectsResponse;->getReward_effects()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_20

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 36
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method
