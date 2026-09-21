.class public final Lcom/obs/services/model/MultipartUploadListing$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/MultipartUploadListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:[Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private multipartTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private truncated:Z

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/MultipartUploadListing$Builder;)[Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->uploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextUploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/MultipartUploadListing$Builder;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->maxUploads:I

    return p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/MultipartUploadListing$Builder;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->truncated:Z

    return p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->multipartTaskList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/MultipartUploadListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bucketName(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/MultipartUploadListing;
    .registers 3

    .line 162
    new-instance v0, Lcom/obs/services/model/MultipartUploadListing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/MultipartUploadListing;-><init>(Lcom/obs/services/model/MultipartUploadListing$Builder;Lcom/obs/services/model/MultipartUploadListing$1;)V

    return-object v0
.end method

.method public commonPrefixes([Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    if-eqz p1, :cond_b

    .line 154
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes:[Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->commonPrefixes:[Ljava/lang/String;

    return-object p0
.end method

.method public delimiter(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public keyMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public maxUploads(I)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 133
    iput p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->maxUploads:I

    return-object p0
.end method

.method public multipartTaskList(Ljava/util/List;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/MultipartUpload;",
            ">;)",
            "Lcom/obs/services/model/MultipartUploadListing$Builder;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->multipartTaskList:Ljava/util/List;

    return-object p0
.end method

.method public nextKeyMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public nextUploadIdMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->nextUploadIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public prefix(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public truncated(Z)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 138
    iput-boolean p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->truncated:Z

    return-object p0
.end method

.method public uploadIdMarker(Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing$Builder;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/obs/services/model/MultipartUploadListing$Builder;->uploadIdMarker:Ljava/lang/String;

    return-object p0
.end method
