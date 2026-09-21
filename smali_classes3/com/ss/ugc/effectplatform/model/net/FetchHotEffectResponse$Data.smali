.class public Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

.field private final extra:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;

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
    .registers 7

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;-><init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;",
            "Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "category_effects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url_prefix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->extra:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    .line 42
    new-instance v1, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v1

    :cond_15
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_20

    .line 43
    new-instance p2, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_20
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_29

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;-><init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCollection()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->getCollection()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEffects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->getCategory_effects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecId()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->extra:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;->getRec_id()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
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

    .line 46
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public setCollection(Ljava/util/List;)V
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

    .line 50
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->setCollection(Ljava/util/List;)V

    return-void
.end method

.method public setEffects(Ljava/util/List;)V
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

    .line 56
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->setCategory_effects(Ljava/util/List;)V

    return-void
.end method

.method public setRecId(Ljava/lang/String;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->extra:Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;->setRec_id(Ljava/lang/String;)V

    :cond_7
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

    .line 46
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Data;->url_prefix:Ljava/util/List;

    return-void
.end method
