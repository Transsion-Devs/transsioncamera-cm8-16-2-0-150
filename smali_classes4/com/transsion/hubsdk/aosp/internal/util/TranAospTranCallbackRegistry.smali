.class public Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;


# instance fields
.field private mTranAospTranCallbackRegistryExt:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;


# direct methods
.method public static synthetic $r8$lambda$etWB4G2EMX5h_JA1UiUHSmWP6kk(Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 28
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;->onContentChanged()V

    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranAospTranCallbackRegistryExt()Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;->mTranAospTranCallbackRegistryExt:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;->mTranAospTranCallbackRegistryExt:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    .line 21
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;->mTranAospTranCallbackRegistryExt:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;->getTranAospTranCallbackRegistryExt()Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->add(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;)V

    return-void
.end method

.method public notifyCallbacks(I)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;->getTranAospTranCallbackRegistryExt()Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->notifyCallbacks(I)V

    return-void
.end method
