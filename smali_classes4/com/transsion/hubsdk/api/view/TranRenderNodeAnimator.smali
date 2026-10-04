.class public Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranRenderNodeAnimator"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPromote()V
    .registers 2

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;->clearPromote()V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;
    .registers 3

    .line 23
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 24
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;

    :cond_11
    return-object p1

    .line 26
    :cond_12
    const-string p1, "TranRenderNodeAnimator"

    const-string v0, "TranAospRenderNodeAnimator"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;

    :cond_24
    return-object p1
.end method

.method public setInstance(Ljava/lang/Object;)V
    .registers 3

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;->setInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public setPromote(Z)V
    .registers 3

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranRenderNodeAnimator;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;->setPromote(Z)V

    return-void
.end method
