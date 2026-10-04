.class public Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAsyncThreadAnimImpl"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncAnimScheduleTraversals(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->asyncAnimScheduleTraversals(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 43
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;
    .registers 3

    .line 27
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 28
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;

    :cond_11
    return-object p1

    .line 30
    :cond_12
    const-string p1, "TranAsyncThreadAnimImpl"

    const-string v0, "TranAospAsyncThreadAnimImpl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;

    :cond_24
    return-object p1
.end method

.method public init(Landroid/os/Looper;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->init(Landroid/os/Looper;)V

    return-void

    .line 36
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "looper cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .registers 2

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->release()V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 66
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->setViewAlpha(Landroid/view/View;F)Z

    move-result p0

    return p0

    .line 64
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setViewScaleX(Landroid/view/View;F)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->setViewScaleX(Landroid/view/View;F)Z

    move-result p0

    return p0

    .line 50
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setViewScaleY(Landroid/view/View;F)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 59
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->setViewScaleY(Landroid/view/View;F)Z

    move-result p0

    return p0

    .line 57
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setViewTranslationX(Landroid/view/View;F)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->setViewTranslationX(Landroid/view/View;F)Z

    move-result p0

    return p0

    .line 71
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setViewTranslationY(Landroid/view/View;F)Z
    .registers 4

    if-eqz p1, :cond_d

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranAsyncThreadAnimImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;->setViewTranslationY(Landroid/view/View;F)Z

    move-result p0

    return p0

    .line 78
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "target view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
