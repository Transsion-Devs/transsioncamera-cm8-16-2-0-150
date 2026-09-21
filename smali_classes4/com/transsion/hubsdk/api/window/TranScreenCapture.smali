.class public Lcom/transsion/hubsdk/api/window/TranScreenCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranScreenCapture"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospScreenCapture;

.field private mThubService:Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsSecureLayers(Ljava/lang/Object;)Z
    .registers 3

    .line 51
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_15

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;->containsSecureLayers(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 55
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "obj should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCaptureArgs(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Ljava/lang/Object;
    .registers 4

    .line 36
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;->getCaptureArgs(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 40
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appSurface or rect should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;

    :cond_11
    return-object p1

    .line 24
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSurfaceControl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospScreenCapture;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/window/TranAospScreenCapture;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/window/TranAospScreenCapture;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenCapture;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospScreenCapture;

    :cond_24
    return-object p1
.end method
