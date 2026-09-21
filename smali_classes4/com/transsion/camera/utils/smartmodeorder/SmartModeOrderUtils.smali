.class public Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowSaveUsageTimes:Z

.field private mContext:Landroid/content/Context;

.field private final mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFacing:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmartModeOrderUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mAllowSaveUsageTimes:Z

    .line 22
    iput v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;
    .registers 1

    .line 32
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setFacing(I)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget v1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    if-eq v1, p1, :cond_f

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_13

    .line 51
    :cond_f
    :goto_f
    iput p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    .line 52
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_d

    throw p0
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 43
    :cond_d
    iput-object p1, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateModeUsedCount()V
    .registers 5

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mAllowSaveUsageTimes:Z

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_76

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    .line 63
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_5e

    .line 67
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_76

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_preferences_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p0, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 71
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_5b

    throw p0

    .line 64
    :cond_5e
    :goto_5e
    sget-object v0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeUsedCount] ignore the third party app use camera count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_76
    return-void
.end method
