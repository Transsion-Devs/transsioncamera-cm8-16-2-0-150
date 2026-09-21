.class final Lcom/obs/services/internal/RestStorageService$RequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/RestStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestInfo"
.end annotation


# instance fields
.field private call:Lokhttp3/Call;

.field private reqBean:Lcom/obs/log/InterfaceLogBean;

.field private request:Lokhttp3/Request;

.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lcom/obs/log/InterfaceLogBean;)V
    .registers 4

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->response:Lokhttp3/Response;

    .line 329
    iput-object v0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->call:Lokhttp3/Call;

    .line 334
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->request:Lokhttp3/Request;

    .line 335
    iput-object p2, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->reqBean:Lcom/obs/log/InterfaceLogBean;

    return-void
.end method


# virtual methods
.method public getCall()Lokhttp3/Call;
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->call:Lokhttp3/Call;

    return-object p0
.end method

.method public getReqBean()Lcom/obs/log/InterfaceLogBean;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->reqBean:Lcom/obs/log/InterfaceLogBean;

    return-object p0
.end method

.method public getRequest()Lokhttp3/Request;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->request:Lokhttp3/Request;

    return-object p0
.end method

.method public getResponse()Lokhttp3/Response;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->response:Lokhttp3/Response;

    return-object p0
.end method

.method public setCall(Lokhttp3/Call;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->call:Lokhttp3/Call;

    return-void
.end method

.method public setRequest(Lokhttp3/Request;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->request:Lokhttp3/Request;

    return-void
.end method

.method public setResponse(Lokhttp3/Response;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RequestInfo;->response:Lokhttp3/Response;

    return-void
.end method
