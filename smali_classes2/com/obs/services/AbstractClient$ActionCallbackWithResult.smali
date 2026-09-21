.class public abstract Lcom/obs/services/AbstractClient$ActionCallbackWithResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/AbstractClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ActionCallbackWithResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/AbstractClient;


# direct methods
.method protected constructor <init>(Lcom/obs/services/AbstractClient;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->this$0:Lcom/obs/services/AbstractClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method authTypeNegotiate(Ljava/lang/String;)V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->this$0:Lcom/obs/services/AbstractClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {v0}, Lcom/obs/services/AbstractClient;->access$000(Lcom/obs/services/AbstractClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/obs/services/internal/security/ProviderCredentials;->getLocalAuthType()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/AuthTypeEnum;

    if-nez v0, :cond_21

    .line 376
    iget-object v0, p0, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->this$0:Lcom/obs/services/AbstractClient;

    # invokes: Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    invoke-static {v0, p1}, Lcom/obs/services/AbstractClient;->access$100(Lcom/obs/services/AbstractClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object v0

    .line 377
    iget-object p0, p0, Lcom/obs/services/AbstractClient$ActionCallbackWithResult;->this$0:Lcom/obs/services/AbstractClient;

    # invokes: Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    invoke-static {p0}, Lcom/obs/services/AbstractClient;->access$200(Lcom/obs/services/AbstractClient;)Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthType(Ljava/lang/String;Lcom/obs/services/model/AuthTypeEnum;)V

    :cond_21
    return-void
.end method
