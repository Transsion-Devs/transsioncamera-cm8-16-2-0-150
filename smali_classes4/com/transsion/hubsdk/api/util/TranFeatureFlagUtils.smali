.class public Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFeatureFlagUtils"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;


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
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFeatureFlagUtils"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFeatureFlagUtils"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    :cond_2b
    return-object p1
.end method

.method public isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
