.class public Lcom/obs/services/model/fs/ListContentSummaryResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private folderContentSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method private constructor <init>(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 64
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->folderContentSummaries:Ljava/util/List;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$000(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    .line 65
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->bucketName:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$100(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->bucketName:Ljava/lang/String;

    .line 66
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->truncated:Z
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$200(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->truncated:Z

    .line 67
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->prefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$300(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->prefix:Ljava/lang/String;

    .line 68
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->marker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$400(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->marker:Ljava/lang/String;

    .line 69
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->maxKeys:I
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$500(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->maxKeys:I

    .line 70
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->delimiter:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$600(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->delimiter:Ljava/lang/String;

    .line 71
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->nextMarker:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$700(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->nextMarker:Ljava/lang/String;

    .line 72
    # getter for: Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->access$800(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->location:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;Lcom/obs/services/model/fs/ListContentSummaryResult$1;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/obs/services/model/fs/ListContentSummaryResult;-><init>(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->bucketName:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->truncated:Z

    .line 54
    iput-object p4, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->prefix:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->marker:Ljava/lang/String;

    .line 56
    iput p6, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->maxKeys:I

    .line 57
    iput-object p7, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->delimiter:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->nextMarker:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderContentSummaries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    .line 152
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->maxKeys:I

    return p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->truncated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentSummaryResult [folderContentSummaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->folderContentSummaries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", truncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->truncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->marker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->maxKeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->nextMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult;->location:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
