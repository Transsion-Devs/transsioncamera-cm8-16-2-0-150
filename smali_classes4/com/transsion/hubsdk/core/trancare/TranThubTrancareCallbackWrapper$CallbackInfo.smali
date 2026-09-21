.class final Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

.field private mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-object p0
.end method

.method public getCallback()Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    return-object p0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    return-void
.end method
