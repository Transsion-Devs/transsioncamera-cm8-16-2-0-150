.class public Lcom/obs/services/model/DeleteObjectsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;,
        Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;
    }
.end annotation


# instance fields
.field private deletedObjectResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;",
            ">;"
        }
    .end annotation
.end field

.field private errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsResult;->deletedObjectResults:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/obs/services/model/DeleteObjectsResult;->errorResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeletedObjectResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/obs/services/model/DeleteObjectsResult;->deletedObjectResults:Ljava/util/List;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/DeleteObjectsResult;->deletedObjectResults:Ljava/util/List;

    .line 46
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult;->deletedObjectResults:Ljava/util/List;

    return-object p0
.end method

.method public getErrorResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/obs/services/model/DeleteObjectsResult;->errorResults:Ljava/util/List;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/DeleteObjectsResult;->errorResults:Ljava/util/List;

    .line 58
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult;->errorResults:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteObjectsResult [deletedObjectResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult;->deletedObjectResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult;->errorResults:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
