.class Lcom/obs/services/AbstractObjectClient$14;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObjectMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/GetObjectMetadataRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)V
    .registers 3

    .line 661
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$14;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$14;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObjectMetadata;
    .registers 2

    .line 665
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$14;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$14;->val$request:Lcom/obs/services/model/GetObjectMetadataRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectMetadataImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2000(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 661
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$14;->action()Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method
