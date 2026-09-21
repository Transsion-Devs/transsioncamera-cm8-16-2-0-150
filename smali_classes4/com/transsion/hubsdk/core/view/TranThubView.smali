.class public Lcom/transsion/hubsdk/core/view/TranThubView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;


# instance fields
.field private mTranView:Lcom/transsion/hubsdk/view/TranView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Lcom/transsion/hubsdk/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    .line 138
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubView;->mTranView:Lcom/transsion/hubsdk/view/TranView;

    return-object p0
.end method


# virtual methods
.method public clearUnionRenderEffect(Landroid/view/View;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 80
    :cond_17
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->clearUnionRenderEffect(Landroid/view/View;)V

    return-void
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZF)Z
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranView;->enableBackdropBlurFilter(Landroid/view/View;ZF)Z

    move-result p0

    return p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
    .registers 5

    .line 49
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranView;->enableBackdropBlurFilter(Landroid/view/View;ZFI)Z

    move-result p0

    return p0
.end method

.method public forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
    .registers 6

    .line 54
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceRenderSdrUnderHdr"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->forceRenderSdrUnderHdr(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return-object v1

    .line 90
    :cond_18
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranView;->getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 92
    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->getUnionRenderObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 93
    new-instance p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;-><init>(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    return-object p1

    :cond_2e
    return-object v1
.end method

.method public hasSetKeyListener(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isRecreateDisplayList(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Landroid/graphics/Bitmap;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMaterialNoise"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 120
    :cond_19
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Ljava/util/function/Consumer;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setOnUnionRenderFrameAvailableListener"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public setPromoteLayerEnabled(Landroid/view/View;Z)Z
    .registers 6

    .line 103
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPromoteLayerEnabled"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setPromoteLayerEnabled(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public setSystemUiVisibility(Landroid/view/Window;I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setSystemUiVisibility(Landroid/view/Window;I)V

    return-void
.end method

.method public setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/View;

    const-class v2, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    .line 70
    :cond_19
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubView;->getTranViewImpl()Lcom/transsion/hubsdk/view/TranView;

    move-result-object p0

    if-nez p2, :cond_21

    const/4 p2, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {p2}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p2

    :goto_25
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranView;->setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    return-void
.end method
