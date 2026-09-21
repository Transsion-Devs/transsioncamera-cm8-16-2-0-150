.class public final Lcom/ss/ugc/effectplatform/model/InspirationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

.field private video:Lcom/ss/ugc/effectplatform/model/VideoModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/InspirationModel;-><init>(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 15
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationModel;-><init>(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/InspirationModel;Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/InspirationModel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationModel;->copy(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;)Lcom/ss/ugc/effectplatform/model/InspirationModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/ss/ugc/effectplatform/model/VideoModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    return-object p0
.end method

.method public final component2()Lcom/ss/ugc/effectplatform/model/AuthorModel;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;)Lcom/ss/ugc/effectplatform/model/InspirationModel;
    .registers 3

    new-instance p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;

    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/InspirationModel;-><init>(Lcom/ss/ugc/effectplatform/model/VideoModel;Lcom/ss/ugc/effectplatform/model/AuthorModel;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/InspirationModel;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/model/InspirationModel;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

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

.method public final getAuthor()Lcom/ss/ugc/effectplatform/model/AuthorModel;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    return-object p0
.end method

.method public final getVideo()Lcom/ss/ugc/effectplatform/model/VideoModel;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAuthor(Lcom/ss/ugc/effectplatform/model/AuthorModel;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    return-void
.end method

.method public final setVideo(Lcom/ss/ugc/effectplatform/model/VideoModel;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InspirationModel(video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->video:Lcom/ss/ugc/effectplatform/model/VideoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/InspirationModel;->author:Lcom/ss/ugc/effectplatform/model/AuthorModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
