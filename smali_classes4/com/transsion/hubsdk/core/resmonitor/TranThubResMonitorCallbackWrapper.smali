.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;
    }
.end annotation


# static fields
.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .line 20
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method

.method public static regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 8

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$1;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 29
    new-instance p1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V

    .line 31
    sget-object v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->regCallbackStatic(ILcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;IIII)V

    return-void
.end method

.method public static unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 4

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    .line 38
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->unregCallbackStatic(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V

    .line 40
    sget-object p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_28
    return-void
.end method
