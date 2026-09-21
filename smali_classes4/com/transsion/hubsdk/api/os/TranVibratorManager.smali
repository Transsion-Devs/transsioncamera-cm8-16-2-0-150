.class public Lcom/transsion/hubsdk/api/os/TranVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranVibratorManager"

.field public static final TYPE_FLICK_LIGHT:I = 0x3

.field public static final TYPE_FLICK_NORMAL:I = 0x2

.field public static final TYPE_HOLD:I = 0xb

.field public static final TYPE_LONG_PRESS:I = 0x9

.field public static final TYPE_MESH_HEAVY:I = 0x5

.field public static final TYPE_MESH_LIGHT:I = 0x8

.field public static final TYPE_MESH_NORMAL:I = 0x7

.field public static final TYPE_PICK_UP:I = 0xa

.field public static final TYPE_POPUP_LIGHT:I = 0xd

.field public static final TYPE_POPUP_NORMAL:I = 0xc

.field public static final TYPE_SCROLL_EDGE:I = 0x6

.field public static final TYPE_SWITCH:I = 0x4

.field public static final TYPE_TAP_LIGHT:I = 0x1

.field public static final TYPE_TAP_NORMAL:I


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;
    .registers 3

    .line 53
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 54
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    :cond_11
    return-object p1

    .line 56
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospVibratorManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    :cond_24
    return-object p1
.end method

.method public stop()V
    .registers 2

    .line 141
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 144
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->stop()V

    return-void
.end method

.method public vibrate(I)V
    .registers 3

    .line 68
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1a

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1a

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(I)V

    return-void

    .line 72
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type could not out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 100
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;)V

    return-void
.end method

.method public vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 130
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 133
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    .line 89
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    return-void

    .line 87
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param file could not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V
    .registers 5

    .line 113
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    .line 119
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V

    return-void

    .line 117
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param file could not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
