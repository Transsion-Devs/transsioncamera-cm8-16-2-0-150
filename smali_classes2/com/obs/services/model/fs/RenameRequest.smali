.class public Lcom/obs/services/model/fs/RenameRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private newObjectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 27
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 47
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/obs/services/model/fs/RenameRequest;->newObjectKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewObjectKey()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/obs/services/model/fs/RenameRequest;->newObjectKey:Ljava/lang/String;

    return-object p0
.end method

.method public setNewObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/obs/services/model/fs/RenameRequest;->newObjectKey:Ljava/lang/String;

    return-void
.end method
