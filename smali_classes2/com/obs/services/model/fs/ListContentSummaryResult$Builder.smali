.class public final Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/fs/ListContentSummaryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/util/List;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->folderContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->truncated:Z

    return p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->marker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->maxKeys:I

    return p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bucketName(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/fs/ListContentSummaryResult;
    .registers 3

    .line 132
    new-instance v0, Lcom/obs/services/model/fs/ListContentSummaryResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/fs/ListContentSummaryResult;-><init>(Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;Lcom/obs/services/model/fs/ListContentSummaryResult$1;)V

    return-object v0
.end method

.method public delimiter(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public folderContentSummaries(Ljava/util/List;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary;",
            ">;)",
            "Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->folderContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public marker(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public maxKeys(I)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 112
    iput p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->maxKeys:I

    return-object p0
.end method

.method public nextMarker(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public prefix(Ljava/lang/String;)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public truncated(Z)Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/obs/services/model/fs/ListContentSummaryResult$Builder;->truncated:Z

    return-object p0
.end method
