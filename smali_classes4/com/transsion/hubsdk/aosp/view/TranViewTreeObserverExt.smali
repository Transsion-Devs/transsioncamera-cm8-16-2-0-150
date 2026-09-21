.class public Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;,
        Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;
    }
.end annotation


# instance fields
.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;",
            "Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->mListenerMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public registerListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 23
    :cond_3
    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;-><init>(Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V

    .line 25
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public unregisterListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 33
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method
