.class Lcom/obs/services/AbstractMultipartObjectClient$3;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractMultipartObjectClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/UploadPartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractMultipartObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/UploadPartRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/UploadPartRequest;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->val$request:Lcom/obs/services/model/UploadPartRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/UploadPartResult;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->val$request:Lcom/obs/services/model/UploadPartRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/UploadPartRequest;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->val$request:Lcom/obs/services/model/UploadPartRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 136
    :cond_11
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Both input and file are set, only one is allowed"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->this$0:Lcom/obs/services/AbstractMultipartObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractMultipartObjectClient$3;->val$request:Lcom/obs/services/model/UploadPartRequest;

    # invokes: Lcom/obs/services/internal/service/ObsMultipartObjectService;->uploadPartImpl(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractMultipartObjectClient;->access$200(Lcom/obs/services/AbstractMultipartObjectClient;Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 131
    invoke-virtual {p0}, Lcom/obs/services/AbstractMultipartObjectClient$3;->action()Lcom/obs/services/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method
