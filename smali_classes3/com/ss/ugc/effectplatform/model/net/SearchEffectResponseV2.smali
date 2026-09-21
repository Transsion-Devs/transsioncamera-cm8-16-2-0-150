.class public Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;
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
.field private data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;-><init>(Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;ILjava/lang/String;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->status_code:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    .line 14
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;-><init>(Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final getData()Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseData()Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->getResponseData()Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->status_code:I

    return p0
.end method

.method public final getStatus_code()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->status_code:I

    return p0
.end method

.method public final setData(Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->message:Ljava/lang/String;

    return-void
.end method

.method public final setStatus_code(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->status_code:I

    return-void
.end method

.method public verifySign()Z
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->getCollection()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 34
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 38
    :cond_24
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->getBind_effects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 39
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v2

    if-nez v2, :cond_34

    return v1

    .line 43
    :cond_47
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectResponseV2;->data:Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;

    if-eqz p0, :cond_6a

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->getEffects()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6a

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/Effect;

    .line 44
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/extension/EffectExKt;->verifySign(Lcom/ss/ugc/effectplatform/model/Effect;)Z

    move-result v0

    if-nez v0, :cond_57

    return v1

    :cond_6a
    const/4 p0, 0x1

    return p0
.end method
