.class public Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranCallbackRegistry"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry;->getService()Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;->add(Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry$TranOnContentChangedListener;)V

    return-void

    .line 54
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TranOnContentChangedListener is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry;->mAospService:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;

    if-nez v0, :cond_b

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry;->mAospService:Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistry;

    :cond_b
    return-object v0
.end method

.method public notifyCallbacks(I)V
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/internal/util/TranCallbackRegistry;->getService()Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/util/ITranCallbackRegistryAdapter;->notifyCallbacks(I)V

    return-void
.end method
