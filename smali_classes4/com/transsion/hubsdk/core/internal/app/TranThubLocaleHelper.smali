.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLocaleHelper"


# instance fields
.field private mService:Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "locale_helper"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranThubLocaleHelper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService;

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 5

    .line 30
    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/internal/app/TranLocale;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/internal/app/TranLocale;-><init>(Ljava/util/Locale;)V

    .line 31
    new-instance p1, Lcom/transsion/hubsdk/internal/app/TranLocale;

    invoke-direct {p1, p2}, Lcom/transsion/hubsdk/internal/app/TranLocale;-><init>(Ljava/util/Locale;)V

    .line 32
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService;

    invoke-interface {p0, v0, p1, p3}, Lcom/transsion/hubsdk/internal/app/ITranLocaleHelperService;->getDisplayName(Lcom/transsion/hubsdk/internal/app/TranLocale;Lcom/transsion/hubsdk/internal/app/TranLocale;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 34
    sget-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;->TAG:Ljava/lang/String;

    const-string p2, "getDisplayName: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 3

    .line 24
    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;-><init>()V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
