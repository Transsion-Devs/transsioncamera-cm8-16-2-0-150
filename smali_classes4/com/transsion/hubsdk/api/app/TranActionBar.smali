.class public Lcom/transsion/hubsdk/api/app/TranActionBar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActionBar"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActionBar;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActionBar;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActionBarAdapter;
    .registers 3

    .line 25
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 26
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActionBar;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActionBar"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActionBar;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActionBar;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActionBar;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActionBar;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActionBar;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActionBar;

    :cond_18
    return-object p1

    .line 29
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActionBar;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActionBar"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActionBar;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActionBar;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActionBar;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActionBar;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActionBar;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActionBar;

    :cond_2b
    return-object p1
.end method

.method public setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V
    .registers 4

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActionBar;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActionBarAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActionBarAdapter;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    return-void
.end method
