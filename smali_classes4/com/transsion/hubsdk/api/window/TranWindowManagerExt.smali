.class public Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;,
        Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;,
        Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;,
        Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranWindowManagerExt"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

.field private mThubService:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getService()Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    if-nez v0, :cond_b

    new-instance v0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    :cond_b
    return-object v0
.end method


# virtual methods
.method public dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public endCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 248
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService()Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->endCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V

    return-void

    .line 246
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TranScrollCaptureResponseExt is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
    .registers 4

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 234
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    .line 232
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDockedStackSide()I
    .registers 2

    .line 299
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->getDockedStackSide()I

    move-result p0

    return p0
.end method

.method public getInitialDisplayDensity(I)I
    .registers 3

    .line 289
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->getInitialDisplayDensity(I)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;
    .registers 3

    .line 25
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    :cond_11
    return-object p1

    .line 28
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWindowManagerExtra"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    :cond_24
    return-object p1
.end method

.method public notifyScreenshotListeners(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-le p1, v0, :cond_14

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_14

    .line 278
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 276
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 88
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->registerDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V

    return-void

    .line 86
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameter TranDisplayFoldListener is null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .registers 4

    if-eqz p1, :cond_c

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V

    return-void

    .line 43
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener cannot be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestImage(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 263
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService()Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->requestImage(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/graphics/Rect;)V

    return-void

    .line 261
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TranScrollCaptureResponseExt is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
    .registers 6

    .line 186
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService()Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V

    return-void
.end method

.method public startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
    .registers 4

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_16

    if-eqz p3, :cond_e

    .line 218
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService()Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V

    return-void

    .line 216
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ITranScrollCaptureCallbacks is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Surface is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TranScrollCaptureResponseExt is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 102
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->unregisterDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V

    return-void

    .line 100
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parameter TranDisplayFoldListener is null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
    .registers 4

    if-eqz p1, :cond_c

    .line 62
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;->unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V

    return-void

    .line 60
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener cannot be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
