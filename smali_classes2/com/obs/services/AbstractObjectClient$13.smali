.class Lcom/obs/services/AbstractObjectClient$13;
.super Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/obs/services/AbstractClient$ActionCallbackWithResult<",
        "Lcom/obs/services/model/HeaderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractObjectClient;

.field final synthetic val$request:Lcom/obs/services/model/SetObjectAclRequest;


# direct methods
.method constructor <init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectAclRequest;)V
    .registers 3

    .line 613
    iput-object p1, p0, Lcom/obs/services/AbstractObjectClient$13;->this$0:Lcom/obs/services/AbstractObjectClient;

    iput-object p2, p0, Lcom/obs/services/AbstractObjectClient$13;->val$request:Lcom/obs/services/model/SetObjectAclRequest;

    invoke-direct {p0, p1}, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;-><init>(Lcom/obs/services/AbstractClient;)V

    return-void
.end method


# virtual methods
.method public action()Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$13;->val$request:Lcom/obs/services/model/SetObjectAclRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetObjectAclRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$13;->val$request:Lcom/obs/services/model/SetObjectAclRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/SetObjectAclRequest;->getCannedACL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 617
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both cannedACL and AccessControlList is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 619
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/obs/services/AbstractObjectClient$13;->this$0:Lcom/obs/services/AbstractObjectClient;

    iget-object p0, p0, Lcom/obs/services/AbstractObjectClient$13;->val$request:Lcom/obs/services/model/SetObjectAclRequest;

    # invokes: Lcom/obs/services/internal/service/ObsObjectBaseService;->setObjectAclImpl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
    invoke-static {v0, p0}, Lcom/obs/services/AbstractObjectClient;->access$1900(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic action()Ljava/lang/Object;
    .registers 1

    .line 613
    invoke-virtual {p0}, Lcom/obs/services/AbstractObjectClient$13;->action()Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
