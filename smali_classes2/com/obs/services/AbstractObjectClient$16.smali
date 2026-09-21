.class Lcom/obs/services/AbstractObjectClient$16;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->appendObject(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/AppendObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/AppendObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/AppendObjectRequest;)V
    .registers 3

    .line 727
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$16;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$16;->val$request:Lcom/obs/services/model/AppendObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/AppendObjectResult;
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$16;->val$request:Lcom/obs/services/model/AppendObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getInput()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$16;->val$request:Lcom/obs/services/model/AppendObjectRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 731
    :cond_11
    new-instance p0, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Both input and file are set, only one is allowed"

    invoke-direct {p0, v0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$16;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$16;->val$request:Lcom/obs/services/model/AppendObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectService;->appendObjectImpl(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$2200(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 727
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$16;->action()Lcom/obs/services/model/AppendObjectResult;

    move-result-object p0

    return-object p0
.end method
