.class public Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerUnofficialAdapter;
    .registers 3

    .line 17
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 18
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityManagerUnofficial;

    :cond_18
    return-object p1

    .line 21
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerUnofficial;

    :cond_2b
    return-object p1
.end method

.method public registerForegroundServiceObserver(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerUnofficialAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerUnofficialAdapter;->registerForegroundServiceObserver(Lcom/transsion/hubsdk/api/app/TranActivityManagerUnofficial$TranForegroundServiceObserver;)Z

    move-result p0

    return p0

    .line 35
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "observer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
