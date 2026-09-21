.class public Lcom/transsion/camera/utils/manager/CamAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/transsion/camera/utils/manager/CamAssetManager;


# instance fields
.field private mConfigsManager:Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;
    .registers 1

    .line 15
    sget-object v0, Lcom/transsion/camera/utils/manager/CamAssetManager;->sInstance:Lcom/transsion/camera/utils/manager/CamAssetManager;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/manager/CamAssetManager;

    invoke-direct {v0}, Lcom/transsion/camera/utils/manager/CamAssetManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/manager/CamAssetManager;->sInstance:Lcom/transsion/camera/utils/manager/CamAssetManager;

    .line 19
    :cond_b
    sget-object v0, Lcom/transsion/camera/utils/manager/CamAssetManager;->sInstance:Lcom/transsion/camera/utils/manager/CamAssetManager;

    return-object v0
.end method


# virtual methods
.method public getAssetPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 28
    const-string v0, "getAssetPath"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/utils/manager/CamAssetManager;->mConfigsManager:Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getAsset(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object p0
.end method

.method public init()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/manager/CamAssetManager;->mConfigsManager:Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;

    .line 24
    const-string p0, "TranssionCamera"

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->initialize(Ljava/lang/String;)V

    return-void
.end method
