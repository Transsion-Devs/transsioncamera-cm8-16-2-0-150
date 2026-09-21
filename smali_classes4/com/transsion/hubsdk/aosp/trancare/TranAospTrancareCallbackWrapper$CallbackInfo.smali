.class final Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranLogCallback:Lcom/transsion/log/TranLogCallback;

.field private mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranLogCallback()Lcom/transsion/log/TranLogCallback;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranLogCallback:Lcom/transsion/log/TranLogCallback;

    return-object p0
.end method

.method public getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-object p0
.end method

.method public setTranLogCallback(Lcom/transsion/log/TranLogCallback;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranLogCallback:Lcom/transsion/log/TranLogCallback;

    return-void
.end method

.method public setTranTrancareCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-void
.end method
