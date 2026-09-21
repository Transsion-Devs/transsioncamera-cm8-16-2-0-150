.class public Lcom/obs/services/model/ListBucketAliasResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;
    }
.end annotation


# instance fields
.field private bucketAlias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/obs/services/model/Owner;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/obs/services/model/Owner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;",
            "Lcom/obs/services/model/Owner;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/obs/services/model/ListBucketAliasResult;->bucketAlias:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/obs/services/model/ListBucketAliasResult;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method


# virtual methods
.method public getBucketAlias()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/obs/services/model/ListBucketAliasResult;->bucketAlias:Ljava/util/List;

    return-object p0
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/obs/services/model/ListBucketAliasResult;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public setBucketAlias(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/obs/services/model/ListBucketAliasResult;->bucketAlias:Ljava/util/List;

    return-void
.end method

.method public setOwner(Lcom/obs/services/model/Owner;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/obs/services/model/ListBucketAliasResult;->owner:Lcom/obs/services/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListBucketAliasResult{bucketAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ListBucketAliasResult;->bucketAlias:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/ListBucketAliasResult;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
