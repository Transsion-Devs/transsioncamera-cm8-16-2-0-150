.class public Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXCEPTION_MSG:Ljava/lang/String; = "LockPatternView CANNOT BE NULL"

.field private static final TAG:Ljava/lang/String; = "TranLockPatternViewController"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 19
    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->TAG:Ljava/lang/String;

    const-string v0, "TranThubLockPatternView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;

    :cond_18
    return-object p1

    .line 22
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospLockPatternView"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;

    :cond_2b
    return-object p1
.end method

.method public setColors(Ljava/lang/Object;III)V
    .registers 6

    if-eqz p1, :cond_c

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;->setColors(Ljava/lang/Object;III)V

    return-void

    .line 37
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LockPatternView CANNOT BE NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDotSize(Ljava/lang/Object;I)V
    .registers 4

    if-eqz p1, :cond_13

    .line 53
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 56
    :cond_9
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;->setDotSize(Ljava/lang/Object;I)V

    return-void

    .line 51
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LockPatternView CANNOT BE NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPathWidth(Ljava/lang/Object;I)V
    .registers 4

    if-eqz p1, :cond_13

    .line 70
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 73
    :cond_9
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternViewController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;->setPathWidth(Ljava/lang/Object;I)V

    return-void

    .line 68
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LockPatternView CANNOT BE NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
