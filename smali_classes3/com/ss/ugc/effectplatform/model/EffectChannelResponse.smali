.class public Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private all_category_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private category_responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private collection_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

.field private panel:Ljava/lang/String;

.field private panel_model:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

.field private rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

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
    .registers 13

    .line 0
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/EffectPanelModel;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "all_category_effects"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category_responses"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panel_model"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection_list"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url_prefix"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->all_category_effects:Ljava/util/List;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->category_responses:Ljava/util/List;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel_model:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->collection_list:Ljava/util/List;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->url_prefix:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->getPanel_model()Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->getPanel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    move-object v3, v2

    goto :goto_13

    :cond_11
    move-object/from16 v3, p2

    :goto_13
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_19

    move-object v4, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v4, p3

    :goto_1b
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    goto :goto_22

    :cond_20
    move-object/from16 v2, p4

    :goto_22
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2c

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2e

    :cond_2c
    move-object/from16 v5, p5

    :goto_2e
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_38

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3a

    :cond_38
    move-object/from16 v6, p6

    :goto_3a
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4e

    .line 14
    new-instance v8, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_50

    :cond_4e
    move-object/from16 v8, p7

    :goto_50
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_5a

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5c

    :cond_5a
    move-object/from16 v7, p8

    :goto_5c
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7a

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p10, v0

    :goto_67
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p5, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p9, v7

    move-object/from16 p8, v8

    goto :goto_7d

    :cond_7a
    move-object/from16 p10, p9

    goto :goto_67

    :goto_7d
    invoke-direct/range {p1 .. p10}, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAll_category_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->all_category_effects:Ljava/util/List;

    return-object p0
.end method

.method public getCategory_responses()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->category_responses:Ljava/util/List;

    return-object p0
.end method

.method public getCollection_list()Ljava/util/List;
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
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->collection_list:Ljava/util/List;

    return-object p0
.end method

.method public getFront_effect()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-object p0
.end method

.method public getPanel()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel:Ljava/lang/String;

    return-object p0
.end method

.method public getPanel_model()Lcom/ss/ugc/effectplatform/model/EffectPanelModel;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel_model:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-object p0
.end method

.method public getRear_effect()Lcom/ss/ugc/effectplatform/model/Effect;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

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

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setAll_category_effects(Ljava/util/List;)V
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

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->all_category_effects:Ljava/util/List;

    return-void
.end method

.method public setCategory_responses(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->category_responses:Ljava/util/List;

    return-void
.end method

.method public setCollection_list(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->collection_list:Ljava/util/List;

    return-void
.end method

.method public setFront_effect(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->front_effect:Lcom/ss/ugc/effectplatform/model/Effect;

    return-void
.end method

.method public setPanel(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel:Ljava/lang/String;

    return-void
.end method

.method public setPanel_model(Lcom/ss/ugc/effectplatform/model/EffectPanelModel;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->panel_model:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-void
.end method

.method public setRear_effect(Lcom/ss/ugc/effectplatform/model/Effect;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->rear_effect:Lcom/ss/ugc/effectplatform/model/Effect;

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

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;->version:Ljava/lang/String;

    return-void
.end method
