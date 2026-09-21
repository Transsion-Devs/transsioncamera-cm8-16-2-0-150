.class public Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/lang/String;

.field private icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private icon_selected:Lcom/ss/ugc/effectplatform/model/UrlModel;

.field private id:Ljava/lang/String;

.field private is_default:Z

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 0
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Lcom/ss/ugc/effectplatform/model/UrlModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effects"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon_selected:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->effects:Ljava/util/List;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags_updated_at:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->is_default:Z

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p12, p11, 0x1

    const-string v0, ""

    if-eqz p12, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p12, p11, 0x8

    const/4 v0, 0x0

    if-eqz p12, :cond_17

    move-object p4, v0

    :cond_17
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1c

    move-object p5, v0

    :cond_1c
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_25

    .line 13
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_2e

    .line 14
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_33

    move-object p8, v0

    :cond_33
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_38

    const/4 p9, 0x0

    :cond_38
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_3d

    move-object p10, v0

    .line 19
    :cond_3d
    invoke-direct/range {p0 .. p10}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkValued()Z
    .registers 5

    .line 22
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_10

    new-instance v0, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->setIcon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    .line 23
    :cond_10
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    .line 24
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->getIcon_selected()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/ss/ugc/effectplatform/model/UrlModel;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->setIcon_selected(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    .line 25
    :cond_25
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->getIcon_selected()Lcom/ss/ugc/effectplatform/model/UrlModel;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 26
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_38
    return v3
.end method

.method public getEffects()Ljava/util/List;
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
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getIcon_selected()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon_selected:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->name:Ljava/lang/String;

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

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTags_updated_at()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public is_default()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->is_default:Z

    return p0
.end method

.method public setEffects(Ljava/util/List;)V
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

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setIcon_selected(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->icon_selected:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->name:Ljava/lang/String;

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

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags:Ljava/util/List;

    return-void
.end method

.method public setTags_updated_at(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->tags_updated_at:Ljava/lang/String;

    return-void
.end method

.method public set_default(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;->is_default:Z

    return-void
.end method
