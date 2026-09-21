.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubResmonitorAsyncCallbackWrapper"

.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method

.method public static getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 6

    .line 29
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;)V

    .line 30
    invoke-virtual {v0, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 31
    new-instance p3, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;

    invoke-direct {p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;-><init>()V

    .line 32
    invoke-virtual {v0, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 33
    sget-object v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_24

    .line 37
    :try_start_18
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    .line 39
    :catch_1c
    sget-object p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->TAG:Ljava/lang/String;

    const-string p1, "getEventAsync error!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_24
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void
.end method

.method public static getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 5

    .line 48
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 50
    new-instance p2, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;

    invoke-direct {p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;-><init>()V

    .line 51
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 52
    sget-object v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_24

    .line 56
    :try_start_18
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    .line 58
    :catch_1c
    sget-object p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->TAG:Ljava/lang/String;

    const-string p1, "getEventBundleAsync error!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_24
    invoke-static {p1, p2}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    return-void
.end method
