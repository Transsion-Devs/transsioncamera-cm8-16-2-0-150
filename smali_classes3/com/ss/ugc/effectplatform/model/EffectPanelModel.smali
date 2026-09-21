.class public Lcom/ss/ugc/effectplatform/model/EffectPanelModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private extra:Ljava/lang/String;

.field private icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private id:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;

.field private text:Ljava/lang/String;


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

    invoke-direct/range {v0 .. v8}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags_updated_at:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_15

    .line 11
    new-instance p3, Lcom/ss/ugc/effectplatform/model/UrlModel;

    const/4 p8, 0x3

    invoke-direct {p3, v0, v0, p8, v0}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_15
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1e

    .line 12
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_23

    move-object p5, v0

    :cond_23
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_28

    move-object p6, v0

    .line 14
    :cond_28
    invoke-direct/range {p0 .. p6}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkValued()Z
    .registers 4

    .line 17
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/ss/ugc/effectplatform/model/UrlModel;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->setIcon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTags_updated_at()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
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

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags:Ljava/util/List;

    return-void
.end method

.method public setTags_updated_at(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->tags_updated_at:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->text:Ljava/lang/String;

    return-void
.end method
