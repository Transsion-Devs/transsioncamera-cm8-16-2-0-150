.class public Lcom/ss/ugc/effectplatform/model/PanelInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;
    }
.end annotation


# instance fields
.field private category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

.field private category_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

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

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;",
            "Lcom/ss/ugc/effectplatform/model/EffectPanelModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category_list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url_prefix"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_list:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->front_effect_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->rear_effect_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->url_prefix:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_6

    .line 44
    const-string p1, ""

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_f

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_15

    move-object p3, v0

    :cond_15
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_1a

    move-object p4, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1f

    move-object p5, v0

    :cond_1f
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_24

    move-object p6, v0

    :cond_24
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_2d

    .line 50
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_3b

    move-object p10, v0

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    goto :goto_44

    :cond_3b
    move-object p10, p8

    move-object p9, p7

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 51
    :goto_44
    invoke-direct/range {p2 .. p10}, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;)V

    return-void
.end method


# virtual methods
.method public getCategory_effects()Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    return-object p0
.end method

.method public getCategory_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_list:Ljava/util/List;

    return-object p0
.end method

.method public final getEffect_panel()Lcom/ss/ugc/effectplatform/model/EffectPanelModel;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-object p0
.end method

.method public final getExtra()Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

    return-object p0
.end method

.method public getFront_effect_id()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->front_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getRear_effect_id()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->rear_effect_id:Ljava/lang/String;

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

    .line 50
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setCategory_effects(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    return-void
.end method

.method public setCategory_list(Ljava/util/List;)V
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

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->category_list:Ljava/util/List;

    return-void
.end method

.method public final setEffect_panel(Lcom/ss/ugc/effectplatform/model/EffectPanelModel;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->panel:Lcom/ss/ugc/effectplatform/model/EffectPanelModel;

    return-void
.end method

.method public final setExtra(Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

    return-void
.end method

.method public setFront_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->front_effect_id:Ljava/lang/String;

    return-void
.end method

.method public setRear_effect_id(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->rear_effect_id:Ljava/lang/String;

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

    .line 50
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/PanelInfoModel;->version:Ljava/lang/String;

    return-void
.end method
