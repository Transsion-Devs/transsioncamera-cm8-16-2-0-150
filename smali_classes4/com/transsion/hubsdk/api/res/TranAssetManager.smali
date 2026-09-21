.class public Lcom/transsion/hubsdk/api/res/TranAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PATH_ARGUMENT_EXCEPTION:Ljava/lang/String; = "path should not be null"

.field private static final TAG:Ljava/lang/String; = "TranAssetManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/res/TranAospAssetManager;

.field private mThubService:Lcom/transsion/hubsdk/core/res/TranThubAssetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssetPath(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/res/TranAssetManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/res/ITranAssetManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/res/ITranAssetManagerAdapter;->addAssetPath(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/res/ITranAssetManagerAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/res/TranAssetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAssetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/res/TranAssetManager;->mThubService:Lcom/transsion/hubsdk/core/res/TranThubAssetManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/res/TranThubAssetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/res/TranAssetManager;->mThubService:Lcom/transsion/hubsdk/core/res/TranThubAssetManager;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/res/TranAssetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAssetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/res/TranAssetManager;->mAospService:Lcom/transsion/hubsdk/aosp/res/TranAospAssetManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/res/TranAospAssetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/res/TranAospAssetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/res/TranAssetManager;->mAospService:Lcom/transsion/hubsdk/aosp/res/TranAospAssetManager;

    :cond_2b
    return-object p1
.end method
