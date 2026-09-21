.class Lcom/obs/services/AbstractDeprecatedBucketClient$1;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractDeprecatedBucketClient;->optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;
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
.field final synthetic this$0:Lcom/obs/services/AbstractDeprecatedBucketClient;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractDeprecatedBucketClient;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;)V
    .registers 4

    .line 114
    iput-object p1, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->this$0:Lcom/obs/services/AbstractDeprecatedBucketClient;

    iput-object p2, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    iput-object p3, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->val$bucketName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/OptionsInfoResult;
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    const-string v1, "OptionsInfoRequest is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->this$0:Lcom/obs/services/AbstractDeprecatedBucketClient;

    iget-object v1, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->val$bucketName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->val$optionInfo:Lcom/obs/services/model/OptionsInfoRequest;

    # invokes: Lcom/obs/services/internal/service/ObsBucketBaseService;->optionsImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    invoke-static {v0, v1, v2, p0}, Lcom/obs/services/AbstractDeprecatedBucketClient;->access$000(Lcom/obs/services/AbstractDeprecatedBucketClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 114
    invoke-virtual {p0}, Lcom/obs/services/AbstractDeprecatedBucketClient$1;->action()Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p0

    return-object p0
.end method
