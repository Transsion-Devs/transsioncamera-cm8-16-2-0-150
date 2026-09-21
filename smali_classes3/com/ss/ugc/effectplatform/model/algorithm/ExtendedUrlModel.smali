.class public Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
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

.field private zip_url_list:Ljava/util/List;
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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "url_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zip_url_list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->url_list:Ljava/util/List;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->zip_url_list:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_9

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_e

    const/4 p2, 0x0

    :cond_e
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_17

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl(Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 22
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUrl_list()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_19
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 21
    :cond_1f
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getZip_url_list()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUrl_list()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->url_list:Ljava/util/List;

    return-object p0
.end method

.method public getZip_url_list()Ljava/util/List;
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
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->zip_url_list:Ljava/util/List;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUrl_list(Ljava/util/List;)V
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

    .line 13
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->url_list:Ljava/util/List;

    return-void
.end method

.method public setZip_url_list(Ljava/util/List;)V
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

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->zip_url_list:Ljava/util/List;

    return-void
.end method
