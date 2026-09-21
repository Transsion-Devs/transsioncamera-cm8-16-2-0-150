.class public Lcom/obs/services/model/BucketTagInfo;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/BucketTagInfo$TagSet;
    }
.end annotation


# instance fields
.field private tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/BucketTagInfo$TagSet;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    return-void
.end method


# virtual methods
.method public getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    if-nez v0, :cond_b

    .line 234
    new-instance v0, Lcom/obs/services/model/BucketTagInfo$TagSet;

    invoke-direct {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    .line 236
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    return-object p0
.end method

.method public setTagSet(Lcom/obs/services/model/BucketTagInfo$TagSet;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    const-string v3, "]"

    if-eqz v2, :cond_5a

    .line 254
    invoke-virtual {v2}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "key="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "value="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    .line 257
    iget-object v7, p0, Lcom/obs/services/model/BucketTagInfo;->tagSet:Lcom/obs/services/model/BucketTagInfo$TagSet;

    invoke-virtual {v7}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_58

    .line 258
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    move v4, v5

    goto :goto_16

    .line 262
    :cond_5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BucketTagInfo [tagSet=[tags="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
