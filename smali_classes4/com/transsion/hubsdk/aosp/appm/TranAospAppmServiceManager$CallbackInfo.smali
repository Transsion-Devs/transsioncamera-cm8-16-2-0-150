.class final Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

.field private mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranAppmCallback()Lcom/transsion/appm/ITranAppmCallback;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

    return-object p0
.end method

.method public getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-object p0
.end method

.method public setTranAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

    return-void
.end method

.method public setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-void
.end method
