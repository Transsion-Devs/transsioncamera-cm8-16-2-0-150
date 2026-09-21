.class public final Lcom/obs/services/model/ListVersionsResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/ListVersionsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private maxKeys:Ljava/lang/String;

.field private nextKeyMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;

.field private versions:[Lcom/obs/services/model/VersionOrDeleteMarker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->nextVersionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->maxKeys:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/ListVersionsResult$Builder;)Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->isTruncated:Z

    return p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/ListVersionsResult$Builder;)[Lcom/obs/services/model/VersionOrDeleteMarker;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/ListVersionsResult$Builder;)Ljava/util/List;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bucketName(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/ListVersionsResult;
    .registers 3

    .line 172
    new-instance v0, Lcom/obs/services/model/ListVersionsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/ListVersionsResult;-><init>(Lcom/obs/services/model/ListVersionsResult$Builder;Lcom/obs/services/model/ListVersionsResult$1;)V

    return-object v0
.end method

.method public commonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/ListVersionsResult$Builder;"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public delimiter(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public isTruncated(Z)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 143
    iput-boolean p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->isTruncated:Z

    return-object p0
.end method

.method public keyMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->keyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public maxKeys(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->maxKeys:Ljava/lang/String;

    return-object p0
.end method

.method public nextKeyMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->nextKeyMarker:Ljava/lang/String;

    return-object p0
.end method

.method public nextVersionIdMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->nextVersionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public prefix(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public versionIdMarker(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->versionIdMarker:Ljava/lang/String;

    return-object p0
.end method

.method public versions([Lcom/obs/services/model/VersionOrDeleteMarker;)Lcom/obs/services/model/ListVersionsResult$Builder;
    .registers 2

    if-eqz p1, :cond_b

    .line 149
    invoke-virtual {p1}, [Lcom/obs/services/model/VersionOrDeleteMarker;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/obs/services/model/VersionOrDeleteMarker;

    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    return-object p0

    :cond_b
    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/obs/services/model/ListVersionsResult$Builder;->versions:[Lcom/obs/services/model/VersionOrDeleteMarker;

    return-object p0
.end method
