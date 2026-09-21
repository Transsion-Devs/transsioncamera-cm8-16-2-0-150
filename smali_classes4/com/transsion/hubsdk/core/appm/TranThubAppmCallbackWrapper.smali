.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAppmCallbackWrapper"

.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 4

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$1;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 21
    new-instance p1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->setTranAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V

    .line 23
    sget-object v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :try_start_16
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 28
    sget-object p1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 5

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    .line 34
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    move-result-object p1

    .line 37
    :try_start_20
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception p0

    .line 39
    sget-object p1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_2e
    sget-object p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method
