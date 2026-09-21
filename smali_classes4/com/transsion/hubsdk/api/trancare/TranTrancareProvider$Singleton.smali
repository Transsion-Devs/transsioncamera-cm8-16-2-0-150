.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Singleton"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 389
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 390
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubTrancareProvider"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    move-result-object p0

    if-nez p0, :cond_1f

    new-instance p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;-><init>()V

    # setter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$102(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;)Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    move-result-object p0

    return-object p0

    :cond_1f
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;

    move-result-object p0

    return-object p0

    .line 393
    :cond_24
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranAospTrancareProvider"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    move-result-object p0

    if-nez p0, :cond_3d

    new-instance p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;-><init>()V

    # setter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$202(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;)Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    move-result-object p0

    return-object p0

    :cond_3d
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;

    move-result-object p0

    return-object p0
.end method
