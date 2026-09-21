.class public Lcom/obs/services/model/S3BucketCors;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCorsRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCorsRule;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCorsRule;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    .line 41
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    return-object p0
.end method

.method public setRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/BucketCorsRule;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObsBucketCors [rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/S3BucketCors;->rules:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
