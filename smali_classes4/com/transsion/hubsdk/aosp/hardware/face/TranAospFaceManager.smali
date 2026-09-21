.class public Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerAdapter;


# static fields
.field private static final FACE_SERVICE:Ljava/lang/String; = "face"

.field private static final TAG:Ljava/lang/String; = "TranAospFaceManager"

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "android.hardware.face.FaceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;->mInstanceObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isHardwareDetected()Z
    .registers 5

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isHardwareDetected"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method public setConfig(III)V
    .registers 4

    .line 42
    sget-object p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManager;->TAG:Ljava/lang/String;

    const-string p1, "AOSP FaceManager has no setConfig method."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
