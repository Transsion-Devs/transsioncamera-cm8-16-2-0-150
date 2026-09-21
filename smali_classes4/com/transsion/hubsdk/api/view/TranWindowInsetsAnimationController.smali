.class public Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;
    .registers 3

    .line 26
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 27
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    :cond_11
    return-object p1

    .line 29
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWindowInsetsAnimationController"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    :cond_24
    return-object p1
.end method

.method public setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V
    .registers 8

    if-eqz p1, :cond_c

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;->setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V

    return-void

    .line 37
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
