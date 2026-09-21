.class public Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 2

    .line 182
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableAutoInvalidateWhenCrossWindowUpdate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBackdropBlur()V
    .registers 2

    .line 137
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBlendColorDark()V
    .registers 2

    .line 77
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBlendColorDark not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableBlendColorLight()V
    .registers 2

    .line 82
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableBlendColorLight not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableCrossWindowBlur()V
    .registers 2

    .line 132
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableCrossWindowBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .registers 2

    .line 102
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableGlobalBlurRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableLocalBlurRadius()V
    .registers 2

    .line 92
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableLocalBlurRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .registers 2

    .line 162
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableMaxCrossFadeRadius not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableMirrorScale()V
    .registers 2

    .line 172
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableMirrorScale not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableRoundCorner()V
    .registers 2

    .line 152
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableRoundCorner not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableStaticBlur()V
    .registers 2

    .line 122
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableStaticBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableUnionBlur()V
    .registers 2

    .line 142
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "disableUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 2

    .line 177
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableAutoInvalidateWhenCrossWindowUpdate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBackdropBlur()V
    .registers 2

    .line 112
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .registers 7

    .line 57
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .registers 2

    .line 47
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .registers 7

    .line 62
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V
    .registers 2

    .line 52
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableCrossWindowBlur()V
    .registers 2

    .line 107
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableCrossWindowBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .registers 10

    .line 67
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableDynamicBlendColorDark not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .registers 10

    .line 72
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableDynamicBlendColorLight not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .registers 2

    .line 97
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableGlobalBlurRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .registers 2

    .line 87
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableLocalBlurRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .registers 2

    .line 157
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableMaxCrossFadeRadius not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableMirrorScale(F)V
    .registers 2

    .line 167
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableMirrorScale not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .registers 4

    .line 147
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableRoundCorner not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .registers 4

    .line 117
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "enableStaticBlur not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableUnionBlur()V
    .registers 2

    .line 127
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "enableUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .registers 2

    .line 23
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "getRealObject not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoInvalidate()Z
    .registers 2

    .line 187
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isAutoInvalidate not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isBackdropBlur()Z
    .registers 2

    .line 29
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isBackdropBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isStaticBlur()Z
    .registers 2

    .line 35
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isStaticBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isUnionBlur()Z
    .registers 2

    .line 17
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "isUnionBlur not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requestFrameSpacing(I)Z
    .registers 2

    .line 193
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "requestFrameSpacing not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requiresNoEffect()Z
    .registers 2

    .line 41
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string v0, "requiresNoEffect not support"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setApiMode(I)V
    .registers 2

    .line 205
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setApiMode not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .registers 2

    .line 199
    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;->TAG:Ljava/lang/String;

    const-string p1, "setBlurAlgorithm not support"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
