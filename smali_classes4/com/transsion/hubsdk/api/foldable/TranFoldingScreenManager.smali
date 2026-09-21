.class public Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFoldingScreenManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

.field private mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 61
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addActivityEmbeddingPkg invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getActivityEmbeddingPkgs invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 128
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getCompatibleMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 178
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 176
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScreenRelayMode(Landroid/content/Context;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 101
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getScreenRelayMode(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 99
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getScreenRelayMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;
    .registers 3

    .line 27
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 28
    sget-object p1, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFoldingScreenManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    :cond_18
    return-object p1

    .line 31
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFoldingScreenManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    :cond_2b
    return-object p1
.end method

.method public isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 45
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "isPkgInActivityEmbedding invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "removeActivityEmbeddingPkg invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    const/4 v0, -0x1

    if-lt p3, v0, :cond_14

    const/4 v0, 0x2

    if-gt p3, v0, :cond_14

    .line 145
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 143
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getCompatibleMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 6

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-ltz p3, :cond_13

    const/4 v0, 0x3

    if-gt p3, v0, :cond_13

    .line 162
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void

    .line 160
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot is illegal"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 6

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 195
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    .line 193
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScreenRelayMode(Landroid/content/Context;I)V
    .registers 4

    if-eqz p1, :cond_11

    if-ltz p2, :cond_11

    const/4 v0, 0x3

    if-gt p2, v0, :cond_11

    .line 115
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setScreenRelayMode(Landroid/content/Context;I)V

    return-void

    .line 113
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setScreenRelayMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
