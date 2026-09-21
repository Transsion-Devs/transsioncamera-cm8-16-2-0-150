.class public final Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private front_effect_id:Ljava/lang/String;

.field private panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

.field private rear_effect_id:Ljava/lang/String;

.field private url_prefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


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

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/PanelDesc;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_29

    move-object p8, v0

    .line 22
    :cond_29
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;
    .registers 11

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_12

    iget-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    :cond_12
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_18

    iget-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    :cond_18
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1e

    iget-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    :cond_1e
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_24

    iget-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    :cond_24
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_2a

    iget-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    :cond_2a
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_30

    iget-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    :cond_30
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->copy(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/ss/ugc/effectplatform/model/net/PanelDesc;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/net/PanelDesc;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;

    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/net/PanelDesc;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_5b

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;

    if-eqz v0, :cond_59

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 p0, 0x0

    return p0

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    return p0
.end method

.method public final getCategory()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    return-object p0
.end method

.method public final getCollection()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public final getEffects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public final getFront_effect_id()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPanel()Lcom/ss/ugc/effectplatform/model/net/PanelDesc;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    return-object p0
.end method

.method public final getRear_effect_id()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    return-object p0
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

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_63
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCategory(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    return-void
.end method

.method public final setCollection(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    return-void
.end method

.method public final setEffects(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/InfoStickerEffect;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    return-void
.end method

.method public final setFront_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    return-void
.end method

.method public final setPanel(Lcom/ss/ugc/effectplatform/model/net/PanelDesc;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    return-void
.end method

.method public final setRear_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    return-void
.end method

.method public final setUrl_prefix(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryInfoStickerListModel(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", panel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->panel:Lcom/ss/ugc/effectplatform/model/net/PanelDesc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", effects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->effects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->collection:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->category:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", front_effect_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->front_effect_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rear_effect_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->rear_effect_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url_prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/QueryInfoStickerListModel;->url_prefix:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
