.class public Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;


# instance fields
.field private mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public clearPromote()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    .line 44
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->clearPromote()V

    return-void
.end method

.method public setInstance(Ljava/lang/Object;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    .line 28
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->setInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public setPromote(Z)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    .line 36
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->setPromote(Z)V

    return-void
.end method
