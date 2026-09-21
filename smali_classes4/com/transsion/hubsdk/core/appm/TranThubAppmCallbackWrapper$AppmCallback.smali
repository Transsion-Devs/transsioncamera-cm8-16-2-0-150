.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;
.super Lcom/transsion/hubsdk/appm/ITranAppmCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppmCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/hubsdk/appm/ITranAppmCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 52
    # getter for: Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;
    invoke-static {}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    .line 53
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 55
    :try_start_1e
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;->onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 57
    # getter for: Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method
