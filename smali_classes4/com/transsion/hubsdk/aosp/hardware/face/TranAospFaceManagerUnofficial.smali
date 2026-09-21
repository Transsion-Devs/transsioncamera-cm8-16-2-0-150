.class public Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;
    }
.end annotation


# static fields
.field private static final FACE_SERVICE:Ljava/lang/String; = "face"

.field private static final TAG:Ljava/lang/String; = "TranAospFaceManagerExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "face"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mFaceManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;Landroid/os/Handler;I)V
    .registers 11

    .line 63
    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$2;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$2;-><init>(Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;)V

    .line 89
    iget-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mFaceManager:Ljava/lang/Object;

    if-eqz p2, :cond_36

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Landroid/hardware/biometrics/CryptoObject;

    const-class v2, Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const-class v3, Landroid/os/Handler;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/CancellationSignal;

    filled-new-array {v1, v5, v2, v3, v4}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "authenticate"

    invoke-static {p2, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 91
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mFaceManager:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {v1, p1, v0, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string p0, "TranAospFaceManagerExt"

    const-string p1, "authenticate for U"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 13

    move-object v0, p2

    .line 28
    new-instance p2, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;-><init>(Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;)V

    .line 54
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mFaceManager:Ljava/lang/Object;

    if-eqz v0, :cond_3d

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/hardware/biometrics/CryptoObject;

    const-class v3, Landroid/hardware/face/FaceManager$AuthenticationCallback;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/CancellationSignal;

    const-class v4, Landroid/os/Handler;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "authenticate"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->mFaceManager:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const/4 p0, 0x0

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string p0, "TranAospFaceManagerExt"

    const-string p1, "authenticate for T"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method
