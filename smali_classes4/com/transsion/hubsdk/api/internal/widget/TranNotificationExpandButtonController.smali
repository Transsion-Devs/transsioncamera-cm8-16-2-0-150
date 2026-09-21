.class public Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationExpandButtonController"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNotificationExpandButton"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    :cond_18
    return-object p1

    .line 19
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNotificationExpandButton"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    :cond_2b
    return-object p1
.end method

.method public setExpandedVisibility(Ljava/lang/Object;Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;->setExpandedVisibility(Ljava/lang/Object;Z)V

    return-void

    .line 32
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "button is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
