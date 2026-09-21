.class public Lcom/ss/ugc/effectplatform/model/CategoryPageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;
    }
.end annotation


# instance fields
.field private category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

.field private extra:Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;

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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;-><init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "url_prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->url_prefix:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->extra:Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_f

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_14

    move-object p3, v0

    .line 21
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;-><init>(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;)V

    return-void
.end method


# virtual methods
.method public getCategory_effects()Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    return-object p0
.end method

.method public final getExtra()Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->extra:Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;

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

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public setCategory_effects(Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->category_effects:Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;

    return-void
.end method

.method public final setExtra(Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->extra:Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;

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

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel;->url_prefix:Ljava/util/List;

    return-void
.end method
