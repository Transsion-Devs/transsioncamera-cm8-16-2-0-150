.class public Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;
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

.field private last_updated_at:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 0
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind_effects"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->cursor:I

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->collection:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->effects:Ljava/util/List;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->bind_effects:Ljava/util/List;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->last_updated_at:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_e

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_17

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_20

    .line 11
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_25

    const/4 p5, 0x0

    :cond_25
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 12
    invoke-direct/range {p2 .. p7}, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

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

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->bind_effects:Ljava/util/List;

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

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public getCursor()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->cursor:I

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

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getLast_updated_at()Ljava/lang/Long;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->last_updated_at:Ljava/lang/Long;

    return-object p0
.end method

.method public setBind_effects(Ljava/util/List;)V
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

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public setCollection(Ljava/util/List;)V
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

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->collection:Ljava/util/List;

    return-void
.end method

.method public setCursor(I)V
    .registers 2

    .line 8
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->cursor:I

    return-void
.end method

.method public setEffects(Ljava/util/List;)V
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

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setLast_updated_at(Ljava/lang/Long;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/QueryTopChecklistEffectsModel;->last_updated_at:Ljava/lang/Long;

    return-void
.end method
