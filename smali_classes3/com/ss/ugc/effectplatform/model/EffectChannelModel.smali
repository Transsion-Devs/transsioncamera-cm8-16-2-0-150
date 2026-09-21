.class public Lcom/ss/ugc/effectplatform/model/EffectChannelModel;
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
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

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

.field private front_effect_id:Ljava/lang/String;

.field private panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

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

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/EffectPanelModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "effects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url_prefix"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->effects:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->category:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->front_effect_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->rear_effect_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->collection:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 26

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_15

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :cond_15
    move-object/from16 v3, p2

    :goto_17
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_21

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_23

    :cond_21
    move-object/from16 v4, p3

    :goto_23
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_36

    .line 15
    new-instance v6, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    const/16 v13, 0x3f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/UrlModel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_38

    :cond_36
    move-object/from16 v6, p4

    :goto_38
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3e

    move-object v5, v2

    goto :goto_40

    :cond_3e
    move-object/from16 v5, p5

    :goto_40
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_45

    goto :goto_47

    :cond_45
    move-object/from16 v2, p6

    :goto_47
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_51

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_53

    :cond_51
    move-object/from16 v7, p7

    :goto_53
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6f

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p9, v0

    :goto_5e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p7, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p6, v5

    move-object/from16 p5, v6

    move-object/from16 p8, v7

    goto :goto_72

    :cond_6f
    move-object/from16 p9, p8

    goto :goto_5e

    :goto_72
    invoke-direct/range {p1 .. p9}, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final checkValued()Z
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->getPanel_model()Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/EffectPanelModel;->checkValued()Z

    move-result p0

    return p0
.end method

.method public final getCategory_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->category:Ljava/util/List;

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

    .line 39
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->collection:Ljava/util/List;

    return-object p0
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

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getFront_effect_id()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->front_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPanel_model()Lcom/ss/ugc/effectplatform/model/EffectPanelModel;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-object p0
.end method

.method public getRear_effect_id()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->rear_effect_id:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setCategory_list(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->category:Ljava/util/List;

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

    .line 41
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->collection:Ljava/util/List;

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

    .line 24
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setFront_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->front_effect_id:Ljava/lang/String;

    return-void
.end method

.method public final setPanel_model(Lcom/ss/ugc/effectplatform/model/EffectPanelModel;)V
    .registers 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-void
.end method

.method public setRear_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->rear_effect_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectChannelModel;->version:Ljava/lang/String;

    return-void
.end method
