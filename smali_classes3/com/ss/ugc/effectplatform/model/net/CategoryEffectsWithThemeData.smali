.class public final Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public category_effects_theme:Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;

.field public extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

.field public url_prefix:Ljava/util/List;
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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;-><init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->category_effects_theme:Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->url_prefix:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;->extra:Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    .line 65
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffectsWithThemeData;-><init>(Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/PanelInfoModel$Extra;)V

    return-void
.end method
