.class public Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SS_ANIMATION:I = 0x4

.field public static final SS_CANCEL_MASK:I = -0x80000000

.field public static final SS_FLING:I

.field public static final SS_LAUNCHER:I = 0x2

.field public static final SS_TOUCH:I

.field public static final SS_UNLOCK:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TranSchedManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/uiawarescheduling/TranAospSchedManager;

.field private mThubService:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    sget v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->sSFling:I

    sput v0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->SS_FLING:I

    .line 21
    sget v0, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;->sSTouch:I

    sput v0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->SS_TOUCH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTranSchedUxTags(I)Z
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_14

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_14

    .line 61
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->cancelTranSchedUxTags(I)Z

    move-result p0

    return p0

    .line 59
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pid invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSchedManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->mThubService:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->mThubService:Lcom/transsion/hubsdk/core/uiawarescheduling/TranThubSchedManager;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSchedManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->mAospService:Lcom/transsion/hubsdk/aosp/uiawarescheduling/TranAospSchedManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/uiawarescheduling/TranAospSchedManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/uiawarescheduling/TranAospSchedManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->mAospService:Lcom/transsion/hubsdk/aosp/uiawarescheduling/TranAospSchedManager;

    :cond_2b
    return-object p1
.end method

.method public getTranSchedScene()I
    .registers 2

    .line 92
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->getTranSchedScene()I

    move-result p0

    return p0
.end method

.method public getTranSchedState()I
    .registers 2

    .line 71
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->getTranSchedState()I

    move-result p0

    return p0
.end method

.method public getTranSchedUxTags(I)J
    .registers 3

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_14

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_14

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->getTranSchedUxTags(I)J

    move-result-wide p0

    return-wide p0

    .line 104
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pid invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTranSchedScene(I)Z
    .registers 3

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->setTranSchedScene(I)Z

    move-result p0

    return p0
.end method

.method public setTranSchedUxTagsByName(ILjava/lang/String;)Z
    .registers 4

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1e

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1e

    if-eqz p2, :cond_16

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/uiawarescheduling/ITranSchedManagerAdapter;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 45
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mainThread cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pid invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
