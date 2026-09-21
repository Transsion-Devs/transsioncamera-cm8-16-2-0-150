.class public final Lcom/obs/services/model/ListPartsResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/ListPartsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private initiator:Lcom/obs/services/model/Owner;

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private multipartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private nextPartNumberMarker:Ljava/lang/String;

.field private owner:Lcom/obs/services/model/Owner;

.field private partNumberMarker:Ljava/lang/String;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->nextPartNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/Owner;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->initiator:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/Owner;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/model/ListPartsResult$Builder;)Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/util/List;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->multipartList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->maxParts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/model/ListPartsResult$Builder;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->isTruncated:Z

    return p0
.end method

.method static synthetic access$900(Lcom/obs/services/model/ListPartsResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/ListPartsResult$Builder;->partNumberMarker:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bucket(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method public builder()Lcom/obs/services/model/ListPartsResult;
    .registers 3

    .line 149
    new-instance v0, Lcom/obs/services/model/ListPartsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/ListPartsResult;-><init>(Lcom/obs/services/model/ListPartsResult$Builder;Lcom/obs/services/model/ListPartsResult$1;)V

    return-object v0
.end method

.method public initiator(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->initiator:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public isTruncated(Z)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->isTruncated:Z

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public maxParts(Ljava/lang/Integer;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->maxParts:Ljava/lang/Integer;

    return-object p0
.end method

.method public multipartList(Ljava/util/List;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/Multipart;",
            ">;)",
            "Lcom/obs/services/model/ListPartsResult$Builder;"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->multipartList:Ljava/util/List;

    return-object p0
.end method

.method public nextPartNumberMarker(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->nextPartNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public owner(Lcom/obs/services/model/Owner;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->owner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public partNumberMarker(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->partNumberMarker:Ljava/lang/String;

    return-object p0
.end method

.method public storageClass(Lcom/obs/services/model/StorageClassEnum;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public uploadId(Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult$Builder;
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/obs/services/model/ListPartsResult$Builder;->uploadId:Ljava/lang/String;

    return-object p0
.end method
