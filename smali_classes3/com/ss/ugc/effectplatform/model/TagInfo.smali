.class public final Lcom/ss/ugc/effectplatform/model/TagInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/TagInfo;Ljava/lang/String;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/TagInfo;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/TagInfo;->copy(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/TagInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/TagInfo;
    .registers 2

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/ugc/effectplatform/model/TagInfo;

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/TagInfo;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/TagInfo;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/ss/ugc/effectplatform/model/TagInfo;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

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

.method public final getTag()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagInfo(tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/TagInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
