.class Lcom/obs/services/AbstractObjectClient$2;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/OptionsInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$objectKey:Ljava/lang/String;

.field final synthetic val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 108
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$2;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$2;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    iput-object p3, p0, Lcom/obs/services/AbstractObjectClient$2;->val$bucketName:Ljava/lang/String;

    iput-object p4, p0, Lcom/obs/services/AbstractObjectClient$2;->val$objectKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/OptionsInfoResult;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$2;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    const-string v1, "OptionsInfoRequest is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$2;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object v1, p0, Lcom/obs/services/AbstractObjectClient$2;->val$bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/obs/services/AbstractObjectClient$2;->val$objectKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$2;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->optionsImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    invoke-static {v0, v1, v2, p0}, Lcom/obs/services/AbstractObjectClient;->access$500(Lcom/obs/services/AbstractObjectClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$2;->action()Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p0

    return-object p0
.end method
