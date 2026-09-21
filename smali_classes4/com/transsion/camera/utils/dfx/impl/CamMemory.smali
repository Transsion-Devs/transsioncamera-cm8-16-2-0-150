.class public Lcom/transsion/camera/utils/dfx/impl/CamMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/IExMemory;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDfxHandler:Landroid/os/Handler;

.field private mLocalSupport:Z

.field private mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

.field private mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

.field private mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamMemory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/dfx/tpms/Tpms;Landroid/os/Handler;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mLocalSupport:Z

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mDfxHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/dfx/policy/DefaultPolicy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DFX_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/dfx/policy/DefaultPolicy;-><init>(Lcom/tencent/mmkv/MMKV;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    .line 70
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public varargs updateLocalSupports([Z)V
    .registers 3

    const/4 v0, 0x2

    .line 81
    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;->mLocalSupport:Z

    return-void
.end method
