.class public final Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private effect_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private model_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->effect_list:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->model_list:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 98
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getEffect_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->effect_list:Ljava/util/List;

    return-object p0
.end method

.method public final getModel_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->model_list:Ljava/util/List;

    return-object p0
.end method

.method public final setEffect_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->effect_list:Ljava/util/List;

    return-void
.end method

.method public final setModel_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadedEffectsRecord;->model_list:Ljava/util/List;

    return-void
.end method
