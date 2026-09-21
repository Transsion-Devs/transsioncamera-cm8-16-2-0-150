.class Lcom/obs/services/ObsClient$2;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/ObsClient;->deleteReadAheadObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ReadAheadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/ObsClient;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 184
    iput-object p1, p0, Lcom/obs/services/ObsClient$2;->this$0:Lcom/obs/services/ObsClient;

    iput-object p2, p0, Lcom/obs/services/ObsClient$2;->val$bucketName:Ljava/lang/String;

    iput-object p3, p0, Lcom/obs/services/ObsClient$2;->val$prefix:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ReadAheadResult;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/obs/services/ObsClient$2;->this$0:Lcom/obs/services/ObsClient;

    iget-object v1, p0, Lcom/obs/services/ObsClient$2;->val$bucketName:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/ObsClient$2;->val$prefix:Ljava/lang/String;

    # invokes: Lcom/obs/services/internal/service/ObsExtensionService;->deleteReadAheadObjectsImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
    invoke-static {v0, v1, p0}, Lcom/obs/services/ObsClient;->access$100(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 184
    invoke-virtual {p0}, Lcom/obs/services/ObsClient$2;->action()Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method
