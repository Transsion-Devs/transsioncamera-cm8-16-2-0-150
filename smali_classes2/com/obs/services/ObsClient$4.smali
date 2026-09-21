.class Lcom/obs/services/ObsClient$4;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/ObsClient;->writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/fs/ObsFSFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/ObsClient;

.field final synthetic val$request:Lcom/obs/services/model/fs/WriteFileRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/ObsClient;Lcom/obs/services/model/fs/WriteFileRequest;)V
    .registers 3

    .line 243
    iput-object p1, p0, Lcom/obs/services/ObsClient$4;->this$0:Lcom/obs/services/ObsClient;

    iput-object p2, p0, Lcom/obs/services/ObsClient$4;->val$request:Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/fs/ObsFSFile;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/obs/services/ObsClient$4;->val$request:Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/obs/services/ObsClient$4;->val$request:Lcom/obs/services/model/fs/WriteFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 247
    :cond_11
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Both input and file are set, only one is allowed"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/obs/services/ObsClient$4;->this$0:Lcom/obs/services/ObsClient;

    iget-object p0, p0, Lcom/obs/services/ObsClient$4;->val$request:Lcom/obs/services/model/fs/WriteFileRequest;

    # invokes: Lcom/obs/services/internal/service/ObsFileService;->writeFileImpl(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    invoke-static {v0, p0}, Lcom/obs/services/ObsClient;->access$300(Lcom/obs/services/ObsClient;Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 243
    invoke-virtual {p0}, Lcom/obs/services/ObsClient$4;->action()Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method
