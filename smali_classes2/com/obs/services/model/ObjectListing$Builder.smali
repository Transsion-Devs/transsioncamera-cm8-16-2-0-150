.class public final Lcom/obs/services/model/ObjectListing$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/ObjectListing;
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

.field private extendCommonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->objectSummaries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/util/List;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->extendCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/ObjectListing$Builder;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->truncated:Z

    return p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->marker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/ObjectListing$Builder;)I
    .registers 1

    .line 89
    iget p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->maxKeys:I

    return p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/ObjectListing$Builder;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/ObjectListing$Builder;->location:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bucketName(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/ObjectListing;
    .registers 3

    .line 164
    new-instance v0, Lcom/obs/services/model/ObjectListing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/ObjectListing;-><init>(Lcom/obs/services/model/ObjectListing$Builder;Lcom/obs/services/model/ObjectListing$1;)V

    return-object v0
.end method

.method public commonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/obs/services/model/ObjectListing$Builder;"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->commonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public delimiter(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->delimiter:Ljava/lang/String;

    return-object p0
.end method

.method public extendCommonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;)",
            "Lcom/obs/services/model/ObjectListing$Builder;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->extendCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public extenedCommonPrefixes(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;)",
            "Lcom/obs/services/model/ObjectListing$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->extendCommonPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public marker(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public maxKeys(I)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 144
    iput p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->maxKeys:I

    return-object p0
.end method

.method public nextMarker(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public objectSummaries(Ljava/util/List;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsObject;",
            ">;)",
            "Lcom/obs/services/model/ObjectListing$Builder;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->objectSummaries:Ljava/util/List;

    return-object p0
.end method

.method public prefix(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public truncated(Z)Lcom/obs/services/model/ObjectListing$Builder;
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/obs/services/model/ObjectListing$Builder;->truncated:Z

    return-object p0
.end method
