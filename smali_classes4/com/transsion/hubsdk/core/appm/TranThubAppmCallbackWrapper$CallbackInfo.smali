.class final Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

.field private mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$1;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    return-object p0
.end method

.method public getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-object p0
.end method

.method public setTranAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    return-void
.end method

.method public setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-void
.end method
