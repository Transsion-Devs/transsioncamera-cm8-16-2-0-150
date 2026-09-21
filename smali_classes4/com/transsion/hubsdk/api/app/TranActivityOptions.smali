.class public Lcom/transsion/hubsdk/api/app/TranActivityOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field private static final TAG:Ljava/lang/String; = "TranActivityOptions"


# instance fields
.field protected mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;

    .line 17
    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 3

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;
    .registers 3

    .line 105
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 106
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityOptions"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    :cond_18
    return-object p1

    .line 109
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityOptions"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityOptions;

    :cond_2b
    return-object p1
.end method

.method public setActivitySurfaceShownCallback(Landroid/app/ActivityOptions;Landroid/os/Messenger;JJ)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_c

    .line 101
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setActivitySurfaceShownCallback(Landroid/app/ActivityOptions;Landroid/os/Messenger;JJ)V

    return-void

    .line 99
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ActivityOptions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 3

    .line 61
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    return-void
.end method

.method public setLaunchTaskId(Landroid/app/ActivityOptions;I)V
    .registers 4

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setLaunchTaskId(Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public setLaunchWindowingMode(Landroid/app/ActivityOptions;I)V
    .registers 4

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setLaunchWindowingMode(Landroid/app/ActivityOptions;I)V

    return-void
.end method

.method public setRotationAnimationHint(I)V
    .registers 3

    .line 71
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setRotationAnimationHint(I)V

    return-void
.end method

.method public setStartMultiWindowByRecent(Landroid/app/ActivityOptions;I)V
    .registers 4

    if-eqz p1, :cond_c

    .line 136
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setStartMultiWindowByRecent(Landroid/app/ActivityOptions;I)V

    return-void

    .line 134
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActivityOptions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setThunderBackSupport(Landroid/app/ActivityOptions;Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 124
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->setThunderBackSupport(Landroid/app/ActivityOptions;Z)V

    return-void

    .line 122
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActivityOptions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityOptions;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityOptionsAdapter;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
