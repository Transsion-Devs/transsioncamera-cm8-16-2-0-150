.class public Lcom/effecttaint/labcv/demo/model/UserData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sInstance:Lcom/effecttaint/labcv/demo/model/UserData;


# instance fields
.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/effecttaint/labcv/demo/model/UserData;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public static getInstance(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/effecttaint/labcv/demo/model/UserData;
    .registers 3

    .line 19
    sget-object v0, Lcom/effecttaint/labcv/demo/model/UserData;->sInstance:Lcom/effecttaint/labcv/demo/model/UserData;

    if-nez v0, :cond_19

    .line 20
    const-class v0, Lcom/effecttaint/labcv/demo/model/UserData;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Lcom/effecttaint/labcv/demo/model/UserData;->sInstance:Lcom/effecttaint/labcv/demo/model/UserData;

    if-nez v1, :cond_15

    .line 22
    new-instance v1, Lcom/effecttaint/labcv/demo/model/UserData;

    invoke-direct {v1, p0}, Lcom/effecttaint/labcv/demo/model/UserData;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    sput-object v1, Lcom/effecttaint/labcv/demo/model/UserData;->sInstance:Lcom/effecttaint/labcv/demo/model/UserData;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 24
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw p0

    .line 26
    :cond_19
    :goto_19
    sget-object p0, Lcom/effecttaint/labcv/demo/model/UserData;->sInstance:Lcom/effecttaint/labcv/demo/model/UserData;

    return-object p0
.end method


# virtual methods
.method public getVersion()I
    .registers 4

    .line 30
    iget-object p0, p0, Lcom/effecttaint/labcv/demo/model/UserData;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "0"

    const-string v1, "user"

    const-string v2, "versionCode"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
