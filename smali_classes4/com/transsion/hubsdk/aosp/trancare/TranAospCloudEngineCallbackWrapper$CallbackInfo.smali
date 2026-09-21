.class final Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mCloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

.field private mTranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$1;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->mCloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    return-object p0
.end method

.method public getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->mTranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    return-object p0
.end method

.method public setCloudEngineCallback(Lcom/transsion/log/cloudengine/ICloudEngineCallback;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->mCloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    return-void
.end method

.method public setTranCloudEngineCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->mTranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    return-void
.end method
