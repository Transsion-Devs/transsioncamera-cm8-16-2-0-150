.class final Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

.field private mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$1;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object p0
.end method

.method public getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    return-object p0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    return-void
.end method
