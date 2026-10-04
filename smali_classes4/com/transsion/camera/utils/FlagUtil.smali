.class public Lcom/transsion/camera/utils/FlagUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;


# instance fields
.field public mIsHealthMonitorButtonSupport:Z

.field public mIsTranLightingFwkV2:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlagUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FlagUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/utils/FlagUtil;->initMainFlags()V

    return-void
.end method

.method public static createInstance()V
    .registers 2

    .line 26
    const-class v0, Lcom/transsion/camera/utils/FlagUtil;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    if-nez v1, :cond_11

    .line 28
    new-instance v1, Lcom/transsion/camera/utils/FlagUtil;

    invoke-direct {v1}, Lcom/transsion/camera/utils/FlagUtil;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_13

    .line 30
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw v1
.end method

.method private executeFlags(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".Flags"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_19

    return p1

    .line 52
    :cond_19
    new-array v0, p1, [Ljava/lang/Class;

    invoke-static {p0, p2, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 54
    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 56
    sget-object p1, Lcom/transsion/camera/utils/FlagUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[executeFlags] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flag method name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4e
    return p1
.end method

.method public static getInstance()Lcom/transsion/camera/utils/FlagUtil;
    .registers 1

    .line 34
    sget-object v0, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    return-object v0
.end method

.method private initMainFlags()V
    .registers 1

    return-void
.end method

.method private isHealthMonitorButtonSupport()Z
    .registers 3

    .line 64
    const-string v0, "com.transsion.camera"

    const-string v1, "healthMonitorButton"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/FlagUtil;->executeFlags(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isIsTranLightingFwkV2()Z
    .registers 3

    .line 69
    const-string v0, "com.transsion.camera"

    const-string v1, "tranLightingFwkV2"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/FlagUtil;->executeFlags(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public initSubFlags()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/utils/FlagUtil;->isHealthMonitorButtonSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/FlagUtil;->mIsHealthMonitorButtonSupport:Z

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/utils/FlagUtil;->isIsTranLightingFwkV2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/FlagUtil;->mIsTranLightingFwkV2:Z

    return-void
.end method
