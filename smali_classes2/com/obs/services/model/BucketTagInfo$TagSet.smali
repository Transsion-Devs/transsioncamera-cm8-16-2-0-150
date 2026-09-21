.class public Lcom/obs/services/model/BucketTagInfo$TagSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/BucketTagInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;
    }
.end annotation


# instance fields
.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;
    .registers 4

    .line 181
    new-instance v0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet;->tags:Ljava/util/List;

    if-nez v0, :cond_b

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet;->tags:Ljava/util/List;

    .line 168
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet;->tags:Ljava/util/List;

    return-object p0
.end method

.method public removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;
    .registers 4

    .line 196
    new-instance v0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public removeTagByKey(Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet;->tags:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 212
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    .line 213
    invoke-virtual {v2}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 214
    invoke-virtual {v2}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    return-object v2

    :cond_2c
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagSet ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/BucketTagInfo$TagSet;->tags:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
