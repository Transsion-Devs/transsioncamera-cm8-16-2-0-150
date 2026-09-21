.class public Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;


# static fields
.field private static final FACE_SERVICE:Ljava/lang/String; = "face"

.field private static final TAG:Ljava/lang/String; = "TranAospFaceManagerExt"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mInstanceObject:Ljava/lang/Object;

.field private mManagerExt:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-string v0, "android.hardware.face.FaceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method

.method private getAospFaceManagerExt()Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->mManagerExt:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    if-nez v0, :cond_f

    .line 84
    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->mManagerExt:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    .line 86
    :cond_f
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->mManagerExt:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    return-object p0
.end method


# virtual methods
.method public authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 7

    move-object v0, p2

    .line 38
    new-instance p2, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;)V

    .line 74
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isLowerAndroidT()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isAndroidT()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_21

    .line 76
    :cond_13
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result p5

    if-eqz p5, :cond_20

    .line 77
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->getAospFaceManagerExt()Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;Landroid/os/Handler;I)V

    :cond_20
    return-void

    .line 75
    :cond_21
    :goto_21
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->getAospFaceManagerExt()Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;Landroid/os/Handler;IZ)V

    return-void
.end method

.method public hasEnrolledTemplates()Z
    .registers 5

    .line 91
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hasEnrolledTemplates"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 92
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->mInstanceObject:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
