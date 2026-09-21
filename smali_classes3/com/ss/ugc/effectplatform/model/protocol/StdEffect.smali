.class public Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private extras:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private model_names:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private need_unzip:Ljava/lang/Boolean;

.field private requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resource_id:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private url_list:Ljava/util/List;
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

    invoke-direct/range {v0 .. v12}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->resource_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->uri:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->url_list:Ljava/util/List;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->need_unzip:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->model_names:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->requirements:Ljava/util/List;

    iput-object p9, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->extras:Ljava/lang/String;

    iput-object p10, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->filePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_29

    move-object p8, v0

    :cond_29
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_2e

    move-object p9, v0

    :cond_2e
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_34

    .line 17
    const-string p10, ""

    :cond_34
    invoke-direct/range {p0 .. p10}, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getExtras()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->extras:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getModel_names()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->model_names:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeed_unzip()Ljava/lang/Boolean;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->need_unzip:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getRequirements()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->requirements:Ljava/util/List;

    return-object p0
.end method

.method public final getResource_id()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->resource_id:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->url_list:Ljava/util/List;

    return-object p0
.end method

.method public final setExtras(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->extras:Ljava/lang/String;

    return-void
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->id:Ljava/lang/String;

    return-void
.end method

.method public final setModel_names(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->model_names:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNeed_unzip(Ljava/lang/Boolean;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->need_unzip:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRequirements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->requirements:Ljava/util/List;

    return-void
.end method

.method public final setResource_id(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->resource_id:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->uri:Ljava/lang/String;

    return-void
.end method

.method public final setUrl_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/protocol/StdEffect;->url_list:Ljava/util/List;

    return-void
.end method
