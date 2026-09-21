.class public final Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/VersionOrDeleteMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appendable:Z

.field private bucketName:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private isDeleteMarker:Z

.field private isLatest:Z

.field private key:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private owner:Lcom/obs/services/model/Owner;

.field private size:J

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->appendable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isLatest:Z

    return p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/util/Date;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Lcom/obs/services/model/Owner;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->etag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)J
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->size:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isDeleteMarker:Z

    return p0
.end method


# virtual methods
.method public appendable(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 181
    iput-boolean p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->appendable:Z

    return-object p0
.end method

.method public bucketName(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/VersionOrDeleteMarker;
    .registers 3

    .line 186
    new-instance v0, Lcom/obs/services/model/VersionOrDeleteMarker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/VersionOrDeleteMarker;-><init>(Lcom/obs/services/model/VersionOrDeleteMarker$Builder;Lcom/obs/services/model/VersionOrDeleteMarker$1;)V

    return-object v0
.end method

.method public etag(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public isDeleteMarker(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 176
    iput-boolean p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isDeleteMarker:Z

    return-object p0
.end method

.method public isLatest(Z)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->isLatest:Z

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public lastModified(Ljava/util/Date;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    if-eqz p1, :cond_b

    .line 148
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified:Ljava/util/Date;

    return-object p0

    :cond_b
    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->lastModified:Ljava/util/Date;

    return-object p0
.end method

.method public owner(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public size(J)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 3

    .line 166
    iput-wide p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->size:J

    return-object p0
.end method

.method public storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public versionId(Ljava/lang/String;)Lcom/obs/services/model/VersionOrDeleteMarker$Builder;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/obs/services/model/VersionOrDeleteMarker$Builder;->versionId:Ljava/lang/String;

    return-object p0
.end method
