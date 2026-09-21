.class public Lcom/transsion/hubsdk/core/app/TranThubPendingIntent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 7

    .line 36
    new-instance p0, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 6

    .line 31
    new-instance p0, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 2

    .line 26
    new-instance p0, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranPendingIntentBridge;->getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
