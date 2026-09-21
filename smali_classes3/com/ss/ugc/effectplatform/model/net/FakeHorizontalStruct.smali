.class public final Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public Bottom:Ljava/lang/Double;

.field public Left:Ljava/lang/Double;

.field public Right:Ljava/lang/Double;

.field public Top:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 5

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;->Top:Ljava/lang/Double;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;->Bottom:Ljava/lang/Double;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;->Left:Ljava/lang/Double;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;->Right:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    .line 276
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ugc/effectplatform/model/net/FakeHorizontalStruct;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method
