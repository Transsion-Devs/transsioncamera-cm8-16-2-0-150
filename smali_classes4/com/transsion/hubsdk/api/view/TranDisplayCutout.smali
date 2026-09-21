.class public Lcom/transsion/hubsdk/api/view/TranDisplayCutout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayCutout"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutout;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutAdapter;
    .registers 3

    .line 17
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 18
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDisplayCutout"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;

    :cond_18
    return-object p1

    .line 21
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayCutout"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutout;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutout;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutout;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayCutout;

    :cond_2b
    return-object p1
.end method

.method public isBoundsEmpty(Landroid/view/DisplayCutout;)Z
    .registers 3

    if-eqz p1, :cond_d

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranDisplayCutout;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutAdapter;->isBoundsEmpty(Landroid/view/DisplayCutout;)Z

    move-result p0

    return p0

    .line 34
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cutout is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
