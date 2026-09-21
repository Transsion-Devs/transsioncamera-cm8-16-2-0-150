.class public Lcom/transsion/hubsdk/api/app/TranPendingIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPendingIntent"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospPendingIntent;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 8

    if-eqz p1, :cond_d

    .line 94
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 92
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 7

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 3

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;->getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;
    .registers 3

    .line 32
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 33
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPendingIntent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;

    :cond_18
    return-object p1

    .line 36
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPendingIntent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospPendingIntent;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospPendingIntent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospPendingIntent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranPendingIntent;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospPendingIntent;

    :cond_2b
    return-object p1
.end method
