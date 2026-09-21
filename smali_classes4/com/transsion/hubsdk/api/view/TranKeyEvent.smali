.class public Lcom/transsion/hubsdk/api/view/TranKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranKeyEvent"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranThubTranKeyEvent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTranKeyEvent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    :cond_2b
    return-object p1
.end method

.method public obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 16

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p14}, Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method
