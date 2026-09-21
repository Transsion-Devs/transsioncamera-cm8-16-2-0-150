.class public Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSendingUserId(Landroid/content/BroadcastReceiver;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 51
    :cond_4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;->getSendingUserId(Landroid/content/BroadcastReceiver;)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;
    .registers 2

    .line 30
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/content/TranThubBroadcastReceiver;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/TranThubBroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

    :cond_11
    return-object p1

    .line 33
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/TranAospBroadcastReceiver;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/TranAospBroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranBroadcastReceiver;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranBroadcastReceiverAdapter;

    :cond_1d
    return-object p1
.end method
