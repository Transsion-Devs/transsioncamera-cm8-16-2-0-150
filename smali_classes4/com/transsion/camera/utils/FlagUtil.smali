.class public Lcom/transsion/camera/utils/FlagUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 6
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlagUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FlagUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/utils/FlagUtil;->initMainFlags()V

    return-void
.end method

.method public static createInstance()V
    .registers 2

    .line 14
    const-class v0, Lcom/transsion/camera/utils/FlagUtil;

    monitor-enter v0

    .line 15
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    if-nez v1, :cond_11

    .line 16
    new-instance v1, Lcom/transsion/camera/utils/FlagUtil;

    invoke-direct {v1}, Lcom/transsion/camera/utils/FlagUtil;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_13

    .line 18
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

.method public static getInstance()Lcom/transsion/camera/utils/FlagUtil;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/camera/utils/FlagUtil;->sFlagUtil:Lcom/transsion/camera/utils/FlagUtil;

    return-object v0
.end method

.method private initMainFlags()V
    .registers 1

    return-void
.end method


# virtual methods
.method public initSubFlags()V
    .registers 1

    return-void
.end method
