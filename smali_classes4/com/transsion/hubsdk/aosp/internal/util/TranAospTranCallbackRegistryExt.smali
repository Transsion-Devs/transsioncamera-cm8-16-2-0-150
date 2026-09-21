.class public Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;
    }
.end annotation


# instance fields
.field private mContentListeners:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;",
            "Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$TranOnContentChangedListener;)V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-nez v0, :cond_10

    .line 30
    new-instance v0, Lcom/android/internal/util/CallbackRegistry;

    new-instance v1, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt$1;-><init>(Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 38
    :cond_10
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyCallbacks(I)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/util/TranAospTranCallbackRegistryExt;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method
