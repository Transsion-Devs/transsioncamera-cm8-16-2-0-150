.class public Lcom/transsion/hubsdk/api/view/TranView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUnionRenderEffect(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 186
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->clearUnionRenderEffect(Landroid/view/View;)V

    return-void

    .line 184
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZF)Z
    .registers 5

    if-eqz p1, :cond_d

    .line 132
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->enableBackdropBlurFilter(Landroid/view/View;ZF)Z

    move-result p0

    return p0

    .line 130
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
    .registers 6

    if-eqz p1, :cond_d

    .line 147
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->enableBackdropBlurFilter(Landroid/view/View;ZFI)Z

    move-result p0

    return p0

    .line 145
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 161
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->forceRenderSdrUnderHdr(Landroid/view/View;Z)Z

    move-result p0

    return p0

    .line 159
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;
    .registers 3

    .line 60
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 61
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    const-string v0, "TranThubView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubView;

    :cond_18
    return-object p1

    .line 64
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranView;->TAG:Ljava/lang/String;

    const-string v0, "TranAospView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    :cond_2b
    return-object p1
.end method

.method public getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
    .registers 3

    if-eqz p1, :cond_d

    .line 199
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    move-result-object p0

    return-object p0

    .line 197
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasSetKeyListener(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 79
    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez v0, :cond_d

    .line 80
    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    .line 82
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;->hasSetKeyListener(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 76
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRecreateDisplayList(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 96
    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    if-nez v0, :cond_d

    .line 97
    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranAospView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    .line 99
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/TranView;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospView;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/view/TranAospView;->isRecreateDisplayList(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 93
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 228
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    .line 226
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 241
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0

    .line 239
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPromoteLayerEnabled(Landroid/view/View;Z)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 215
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setPromoteLayerEnabled(Landroid/view/View;Z)Z

    move-result p0

    return p0

    .line 213
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemUiVisibility(Landroid/view/Window;I)V
    .registers 4

    .line 116
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setSystemUiVisibility(Landroid/view/Window;I)V

    return-void
.end method

.method public setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 174
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranView;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;->setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V

    return-void

    .line 172
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
