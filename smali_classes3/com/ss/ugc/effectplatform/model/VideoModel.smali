.class public final Lcom/ss/ugc/effectplatform/model/VideoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/VideoModel;-><init>(Lcom/ss/ugc/effectplatform/model/UrlModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/UrlModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 20
    :cond_5
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/VideoModel;-><init>(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/UrlModel;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/VideoModel;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/VideoModel;->copy(Lcom/ss/ugc/effectplatform/model/UrlModel;)Lcom/ss/ugc/effectplatform/model/VideoModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/UrlModel;)Lcom/ss/ugc/effectplatform/model/VideoModel;
    .registers 2

    new-instance p0, Lcom/ss/ugc/effectplatform/model/VideoModel;

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/VideoModel;-><init>(Lcom/ss/ugc/effectplatform/model/UrlModel;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/VideoModel;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/ss/ugc/effectplatform/model/VideoModel;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final getPlay_addr()Lcom/ss/ugc/effectplatform/model/UrlModel;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final setPlay_addr(Lcom/ss/ugc/effectplatform/model/UrlModel;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoModel(play_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/VideoModel;->play_addr:Lcom/ss/ugc/effectplatform/model/UrlModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
