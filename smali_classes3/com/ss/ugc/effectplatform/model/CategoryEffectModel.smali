.class public Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;
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

.field private category_key:Ljava/lang/String;

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

.field private has_more:Z

.field private sorting_position:I

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

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII",
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
            ">;)V"
        }
    .end annotation

    const-string v0, "category_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effects"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind_effects"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->category_key:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->version:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->has_more:Z

    iput p4, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->cursor:I

    iput p5, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->sorting_position:I

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->collection:Ljava/util/List;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->effects:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const-string v0, ""

    if-eqz p10, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_12

    move p3, v0

    :cond_12
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_17

    move p4, v0

    :cond_17
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1c

    move p5, v0

    :cond_1c
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_25

    .line 27
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_2e

    .line 28
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_37

    .line 29
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    :cond_37
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;)V

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

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->bind_effects:Ljava/util/List;

    return-object p0
.end method

.method public final getCategory_effects()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getCategory_key()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->category_key:Ljava/lang/String;

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

    .line 27
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public getCursor()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->cursor:I

    return p0
.end method

.method public getHas_more()Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->has_more:Z

    return p0
.end method

.method public getSorting_position()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->sorting_position:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->version:Ljava/lang/String;

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

    .line 29
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->bind_effects:Ljava/util/List;

    return-void
.end method

.method public final setCategory_effects(Ljava/util/List;)V
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

    .line 34
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setCategory_key(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->category_key:Ljava/lang/String;

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

    .line 27
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->collection:Ljava/util/List;

    return-void
.end method

.method public setCursor(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->cursor:I

    return-void
.end method

.method public setHas_more(Z)V
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->has_more:Z

    return-void
.end method

.method public setSorting_position(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->sorting_position:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryEffectModel;->version:Ljava/lang/String;

    return-void
.end method
