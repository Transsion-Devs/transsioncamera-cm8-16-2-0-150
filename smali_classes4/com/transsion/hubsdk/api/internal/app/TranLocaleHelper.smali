.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locale or displayLocale cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_d

    .line 26
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locale cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;
    .registers 2

    .line 45
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 46
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->mThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;

    :cond_11
    return-object p1

    .line 48
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleHelper;->mAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

    :cond_1d
    return-object p1
.end method
