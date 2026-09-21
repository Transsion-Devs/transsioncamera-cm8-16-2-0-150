.class public Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cursor:Ljava/lang/String;

.field private sorting_position:Ljava/lang/String;

.field private version:Ljava/lang/String;


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

    invoke-direct/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->cursor:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->sorting_position:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 10
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCursor()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->cursor:Ljava/lang/String;

    return-object p0
.end method

.method public getSorting_position()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->sorting_position:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setCursor(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->cursor:Ljava/lang/String;

    return-void
.end method

.method public setSorting_position(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->sorting_position:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CheckUpdateVersionModel;->version:Ljava/lang/String;

    return-void
.end method
