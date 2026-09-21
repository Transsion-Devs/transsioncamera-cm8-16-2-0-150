.class public Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospUnlaunchableAppActivity;

.field private static sThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .registers 2

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranUnlaunchableAppActivityAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranUnlaunchableAppActivityAdapter;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/app/ITranUnlaunchableAppActivityAdapter;
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 24
    sget-object p0, Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;->sThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;

    if-nez p0, :cond_11

    new-instance p0, Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;->sThubService:Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;

    :cond_11
    return-object p0

    .line 26
    :cond_12
    sget-object p0, Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;->sAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospUnlaunchableAppActivity;

    if-nez p0, :cond_1d

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospUnlaunchableAppActivity;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospUnlaunchableAppActivity;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/app/TranUnlaunchableAppActivity;->sAospService:Lcom/transsion/hubsdk/aosp/internal/app/TranAospUnlaunchableAppActivity;

    :cond_1d
    return-object p0
.end method
