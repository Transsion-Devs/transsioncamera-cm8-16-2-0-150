.class public Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
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

.field private search_id:Ljava/lang/String;

.field private search_tips:Ljava/lang/String;

.field private use_hot:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 0
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
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
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->has_more:Z

    iput p2, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->cursor:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_tips:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->use_hot:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->effects:Ljava/util/List;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->collection:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_16

    move-object p4, v0

    :cond_16
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_20

    move-object p6, v0

    :cond_20
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_25

    move-object p7, v0

    :cond_25
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_2a

    move-object p8, v0

    .line 61
    :cond_2a
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

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

    .line 61
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->bind_effects:Ljava/util/List;

    return-object p0
.end method

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

    .line 60
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public getCursor()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->cursor:I

    return p0
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

    .line 59
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getHas_more()Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->has_more:Z

    return p0
.end method

.method public getSearch_id()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSearch_tips()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public getUse_hot()Ljava/lang/Boolean;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->use_hot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setBind_effects(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public setCollection(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->collection:Ljava/util/List;

    return-void
.end method

.method public setCursor(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->cursor:I

    return-void
.end method

.method public setEffects(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setHas_more(Z)V
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->has_more:Z

    return-void
.end method

.method public setSearch_id(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_id:Ljava/lang/String;

    return-void
.end method

.method public setSearch_tips(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->search_tips:Ljava/lang/String;

    return-void
.end method

.method public setUse_hot(Ljava/lang/Boolean;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/SearchEffectModel;->use_hot:Ljava/lang/Boolean;

    return-void
.end method
