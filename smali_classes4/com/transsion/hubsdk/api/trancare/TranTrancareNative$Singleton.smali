.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Singleton"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 208
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranThubTrancareNative"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    move-result-object p0

    if-nez p0, :cond_1f

    new-instance p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;-><init>()V

    # setter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$102(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;)Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    move-result-object p0

    return-object p0

    :cond_1f
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    move-result-object p0

    return-object p0

    .line 211
    :cond_24
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranAospTrancareNative"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    move-result-object p0

    if-nez p0, :cond_3d

    new-instance p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;-><init>()V

    # setter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;
    invoke-static {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$202(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;)Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    move-result-object p0

    return-object p0

    :cond_3d
    # getter for: Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    move-result-object p0

    return-object p0
.end method
