.class public Lcom/transsion/hubsdk/api/view/TranSurfaceControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ROUND_RATIO:F = 1.4f

.field private static final TAG:Ljava/lang/String; = "TranSurfaceControl"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControl;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 318
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->apply(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void

    .line 316
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameter, transaction cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public captureDisplayAsBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 3

    .line 93
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->captureDisplayAsBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public checkProtectedContent(Landroid/view/SurfaceControl;)Z
    .registers 3

    if-eqz p1, :cond_15

    .line 370
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 373
    :cond_a
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->checkProtectedContent(Landroid/view/SurfaceControl;)Z

    move-result p0

    return p0

    .line 368
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "surfaceControl should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSfWithContainerLayer(Ljava/lang/String;ZLandroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 6

    if-eqz p1, :cond_f

    if-eqz p3, :cond_f

    .line 337
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->createSfWithContainerLayer(Ljava/lang/String;ZLandroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 335
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSfWithEffectLayer(Ljava/lang/String;Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 5

    if-eqz p1, :cond_d

    .line 355
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->createSfWithEffectLayer(Ljava/lang/String;Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 353
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;)Landroid/os/IBinder;
    .registers 3

    .line 397
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-eqz p1, :cond_15

    .line 403
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->getDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 401
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transaction should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 4

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;
    .registers 3

    .line 36
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 37
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSurfaceControl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControl;

    :cond_18
    return-object p1

    .line 40
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSurfaceControl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControl;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControl;

    :cond_2b
    return-object p1
.end method

.method public isRequestChangeScale(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 112
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->isRequestChangeScale(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 410
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->remove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 408
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with remove"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V
    .registers 4

    .line 382
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 388
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setDefaultApplyToken(Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V

    return-void

    .line 386
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transaction or token should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p3, :cond_13

    if-eqz p4, :cond_13

    .line 234
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 232
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with setMatrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiWindowLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 160
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setMultiWindowLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 158
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with setMultiWindowLayer, params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 178
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 176
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters, params should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadowRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 216
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setShadowRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 214
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal setShadowRadius parameters, params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSmoothCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .registers 5

    if-eqz p2, :cond_10

    const v0, 0x3fb33333    # 1.4f

    mul-float/2addr p3, v0

    .line 290
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setSmoothCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    return-void

    .line 287
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with setSmoothCornerRadius surfaceControl == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTranSmoothCorner(Landroid/view/View;FF)V
    .registers 5

    if-eqz p1, :cond_c

    .line 270
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setTranSmoothCorner(Landroid/view/View;FF)V

    return-void

    .line 268
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with setTranSmoothCorner view == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 142
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 140
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal setTrustedOverlay parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 198
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 196
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal parameters with setWindowCrop"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .registers 2

    .line 301
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0
.end method

.method public startVfxAnimation(Landroid/view/View;IF[FFF)V
    .registers 9

    if-eqz p1, :cond_10

    .line 251
    array-length v0, p4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    .line 254
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlAdapter;->startVfxAnimation(Landroid/view/View;IF[FFF)V

    return-void

    .line 252
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters with startVfxAnimation view == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
