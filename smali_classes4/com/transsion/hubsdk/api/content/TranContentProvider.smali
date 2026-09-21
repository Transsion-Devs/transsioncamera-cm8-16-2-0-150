.class public Lcom/transsion/hubsdk/api/content/TranContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranContentProvider"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/content/TranAospContentProvider;

.field private static sThubService:Lcom/transsion/hubsdk/core/content/TranThubContentProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContentProviderAdapter;
    .registers 2

    .line 36
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 37
    sget-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "TranThubContentProvider"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->sThubService:Lcom/transsion/hubsdk/core/content/TranThubContentProvider;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/content/TranThubContentProvider;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/TranThubContentProvider;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->sThubService:Lcom/transsion/hubsdk/core/content/TranThubContentProvider;

    :cond_18
    return-object p0

    .line 40
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "TranAospContentProvider"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->sAospService:Lcom/transsion/hubsdk/aosp/content/TranAospContentProvider;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/content/TranAospContentProvider;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/content/TranAospContentProvider;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/content/TranContentProvider;->sAospService:Lcom/transsion/hubsdk/aosp/content/TranAospContentProvider;

    :cond_2b
    return-object p0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 3

    .line 53
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33201:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/content/TranContentProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContentProviderAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranContentProviderAdapter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
