.class Lcom/obs/services/AbstractObjectClient$7;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/ObsObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/GetObjectRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectRequest;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$7;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$7;->val$request:Lcom/obs/services/model/GetObjectRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/ObsObject;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$7;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$7;->val$request:Lcom/obs/services/model/GetObjectRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectImpl(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1300(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 384
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$7;->action()Lcom/obs/services/model/ObsObject;

    move-result-object p0

    return-object p0
.end method
