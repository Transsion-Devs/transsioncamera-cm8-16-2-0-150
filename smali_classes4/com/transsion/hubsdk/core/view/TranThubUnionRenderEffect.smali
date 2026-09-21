.class public Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;


# instance fields
.field private mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 20
    new-instance p1, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    invoke-direct {p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    :cond_c
    return-void
.end method

.method private getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-object p0
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 1

    .line 196
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public disableBackdropBlur()V
    .registers 1

    .line 151
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBackdropBlur()V

    return-void
.end method

.method public disableBlendColorDark()V
    .registers 1

    .line 91
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBlendColorDark()V

    return-void
.end method

.method public disableBlendColorLight()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableBlendColorLight()V

    return-void
.end method

.method public disableCrossWindowBlur()V
    .registers 1

    .line 146
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableCrossWindowBlur()V

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableGlobalBlurRadius()V

    return-void
.end method

.method public disableLocalBlurRadius()V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableLocalBlurRadius()V

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableMaxCrossFadeRadius()V

    return-void
.end method

.method public disableMirrorScale()V
    .registers 1

    .line 186
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableMirrorScale()V

    return-void
.end method

.method public disableRoundCorner()V
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableRoundCorner()V

    return-void
.end method

.method public disableStaticBlur()V
    .registers 1

    .line 136
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableStaticBlur()V

    return-void
.end method

.method public disableUnionBlur()V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->disableUnionBlur()V

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 1

    .line 191
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public enableBackdropBlur()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBackdropBlur()V

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .registers 7

    .line 67
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorDark(IIIIII)V

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .registers 7

    .line 72
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorLight(IIIIII)V

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableCrossWindowBlur()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableCrossWindowBlur()V

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .registers 10

    .line 78
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableDynamicBlendColorDark(IIIIIIIII)V

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .registers 10

    .line 85
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableDynamicBlendColorLight(IIIIIIIII)V

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableGlobalBlurRadius(F)V

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableLocalBlurRadius(F)V

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .registers 2

    .line 171
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableMaxCrossFadeRadius(F)V

    return-void
.end method

.method public enableMirrorScale(F)V
    .registers 2

    .line 181
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableMirrorScale(F)V

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .registers 4

    .line 161
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableRoundCorner(FZF)V

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .registers 4

    .line 131
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableStaticBlur(Landroid/graphics/Bitmap;ZF)V

    return-void
.end method

.method public enableUnionBlur()V
    .registers 1

    .line 141
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->enableUnionBlur()V

    return-void
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-object p0
.end method

.method public isAutoInvalidate()Z
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isAutoInvalidate()Z

    move-result p0

    return p0
.end method

.method public isBackdropBlur()Z
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isBackdropBlur()Z

    move-result p0

    return p0
.end method

.method public isStaticBlur()Z
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isStaticBlur()Z

    move-result p0

    return p0
.end method

.method public isUnionBlur()Z
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isUnionBlur()Z

    move-result p0

    return p0
.end method

.method public requestFrameSpacing(I)Z
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->requestFrameSpacing(I)Z

    move-result p0

    return p0
.end method

.method public requiresNoEffect()Z
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->requiresNoEffect()Z

    move-result p0

    return p0
.end method

.method public setApiMode(I)V
    .registers 2

    .line 216
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setApiMode(I)V

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .registers 2

    .line 211
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->getTranUnionRenderEffectImpl()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->setBlurAlgorithm(I)V

    return-void
.end method

.method public setRealObject(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->mTranUnionRenderEffect:Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    return-void
.end method
