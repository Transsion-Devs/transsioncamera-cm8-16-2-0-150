.class Lcom/obs/services/ObsClient$1;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/ObsClient;->readAheadObjects(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
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

.field final synthetic val$request:Lcom/obs/services/model/ReadAheadRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/ObsClient;Lcom/obs/services/model/ReadAheadRequest;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/obs/services/ObsClient$1;->this$0:Lcom/obs/services/ObsClient;

    iput-object p2, p0, Lcom/obs/services/ObsClient$1;->val$request:Lcom/obs/services/model/ReadAheadRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ReadAheadResult;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/obs/services/ObsClient$1;->this$0:Lcom/obs/services/ObsClient;

    iget-object p0, p0, Lcom/obs/services/ObsClient$1;->val$request:Lcom/obs/services/model/ReadAheadRequest;

    # invokes: Lcom/obs/services/internal/service/ObsExtensionService;->readAheadObjectsImpl(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
    invoke-static {v0, p0}, Lcom/obs/services/ObsClient;->access$000(Lcom/obs/services/ObsClient;Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 170
    invoke-virtual {p0}, Lcom/obs/services/ObsClient$1;->action()Lcom/obs/services/model/ReadAheadResult;

    move-result-object p0

    return-object p0
.end method
