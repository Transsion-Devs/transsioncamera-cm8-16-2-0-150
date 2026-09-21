.class public final Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataNode"
.end annotation


# instance fields
.field private effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

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
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;-><init>(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/PlatformEffect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 38
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;-><init>(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->copy(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/ss/ugc/effectplatform/model/PlatformEffect;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;)Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ugc/effectplatform/model/PlatformEffect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;"
        }
    .end annotation

    new-instance p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;

    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;-><init>(Lcom/ss/ugc/effectplatform/model/PlatformEffect;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final getEffect()Lcom/ss/ugc/effectplatform/model/PlatformEffect;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    return-object p0
.end method

.method public final getUrl_prefix()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEffect(Lcom/ss/ugc/effectplatform/model/PlatformEffect;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    return-void
.end method

.method public final setUrl_prefix(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataNode(effect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->effect:Lcom/ss/ugc/effectplatform/model/PlatformEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url_prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/ScanQRCodeResponse$DataNode;->url_prefix:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
