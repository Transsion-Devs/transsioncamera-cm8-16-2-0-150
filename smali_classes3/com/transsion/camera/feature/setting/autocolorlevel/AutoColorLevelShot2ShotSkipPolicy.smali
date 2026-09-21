.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentCount:I

.field final mCurrentCountLock:Ljava/lang/Object;

.field private final mShot2ShotPlatform:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ACL_Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCountLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    .line 16
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getShot2ShotPolicyPlatform()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    .line 17
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2ShotPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dumpMap(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 59
    const-string p0, "null"

    return-object p0

    .line 61
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-gtz p0, :cond_f

    .line 62
    const-string/jumbo p0, "{}"

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public increaseCount()V
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    iget v1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    .line 23
    sget-object v1, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[increaseCount] mCurrentCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 24
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public needSkip()I
    .registers 7

    .line 35
    iget v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mShot2ShotPlatform:I

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->chooseSpec(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_11

    .line 37
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "needReplace maxCount not found !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 41
    :cond_11
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_14
    sget-object v3, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoColorLevel needReplace mCurrentCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  maxCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    if-lez p0, :cond_41

    if-lez v0, :cond_41

    if-le p0, v0, :cond_41

    const/4 p0, 0x1

    .line 44
    monitor-exit v2

    return p0

    :catchall_3f
    move-exception p0

    goto :goto_48

    .line 46
    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_3f

    .line 47
    const-string p0, "needReplace false."

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 46
    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3f

    throw p0
.end method

.method public needSkipAlgo()Z
    .registers 4

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->needSkip()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 53
    :goto_9
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[needSkipAlgo] needSkip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public resetCount()V
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[resetCount]"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelShot2ShotSkipPolicy;->mCurrentCount:I

    .line 31
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method
