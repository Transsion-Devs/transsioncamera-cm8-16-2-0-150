.class Lcom/obs/services/ObsClient$3;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/ObsClient;->queryReadAheadObjectsTask(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ReadAheadQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/ObsClient;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 199
    iput-object p1, p0, Lcom/obs/services/ObsClient$3;->this$0:Lcom/obs/services/ObsClient;

    iput-object p2, p0, Lcom/obs/services/ObsClient$3;->val$bucketName:Ljava/lang/String;

    iput-object p3, p0, Lcom/obs/services/ObsClient$3;->val$taskId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ReadAheadQueryResult;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/obs/services/ObsClient$3;->this$0:Lcom/obs/services/ObsClient;

    iget-object v1, p0, Lcom/obs/services/ObsClient$3;->val$bucketName:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/ObsClient$3;->val$taskId:Ljava/lang/String;

    # invokes: Lcom/obs/services/internal/service/ObsExtensionService;->queryReadAheadObjectsTaskImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
    invoke-static {v0, v1, p0}, Lcom/obs/services/ObsClient;->access$200(Lcom/obs/services/ObsClient;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 199
    invoke-virtual {p0}, Lcom/obs/services/ObsClient$3;->action()Lcom/obs/services/model/ReadAheadQueryResult;

    move-result-object p0

    return-object p0
.end method
