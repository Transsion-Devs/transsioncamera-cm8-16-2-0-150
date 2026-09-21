.class public Lcom/apprichtap/haptic/RichTapPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apprichtap/haptic/player/IHapticPlayer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

.field private mRichTapPerformer:Lcom/apprichtap/haptic/player/d;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mVibrator:Landroid/os/Vibrator;

    new-instance p1, Lcom/apprichtap/haptic/player/d;

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/apprichtap/haptic/player/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mRichTapPerformer:Lcom/apprichtap/haptic/player/d;

    if-eqz p2, :cond_50

    const/4 v0, 0x1

    if-eq p2, v0, :cond_43

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown player type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RichTapPlayer"

    invoke-static {p2, p1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_3b
    new-instance p2, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-direct {p2, p1}, Lcom/apprichtap/haptic/RichTapPlayer;-><init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V

    iput-object p2, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    goto :goto_5d

    :cond_43
    new-instance p1, Lcom/apprichtap/haptic/RichTapPlayer;

    new-instance p2, Lcom/apprichtap/haptic/player/e;

    invoke-direct {p2}, Lcom/apprichtap/haptic/player/e;-><init>()V

    invoke-direct {p1, p2}, Lcom/apprichtap/haptic/RichTapPlayer;-><init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V

    :goto_4d
    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    goto :goto_5d

    :cond_50
    new-instance p1, Lcom/apprichtap/haptic/RichTapPlayer;

    new-instance p2, Lcom/apprichtap/haptic/player/b;

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p2, v0}, Lcom/apprichtap/haptic/player/b;-><init>(Landroid/os/Vibrator;)V

    invoke-direct {p1, p2}, Lcom/apprichtap/haptic/RichTapPlayer;-><init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V

    goto :goto_4d

    :goto_5d
    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/apprichtap/haptic/base/d;->d:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/apprichtap/haptic/player/IHapticPlayer;->create(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)Lcom/apprichtap/haptic/player/IHapticPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apprichtap/haptic/RichTapPlayer;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "RichTapPlayer"

    if-nez p0, :cond_b

    const-string p0, "context == null"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-static {p1}, Lcom/apprichtap/haptic/RichTapPlayer;->isPlayerTypeAvailable(I)Z

    move-result v2

    if-nez v2, :cond_17

    const-string p0, "specified player type not available!"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_17
    new-instance v0, Lcom/apprichtap/haptic/RichTapPlayer;

    invoke-direct {v0, p0, p1}, Lcom/apprichtap/haptic/RichTapPlayer;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getRichTapCoreMajorVersion(Landroid/content/Context;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_d

    :try_start_3
    const-string p0, "RichTapPlayer"

    const-string v1, "getRichTapCoreMajorVersion, null == context"

    invoke-static {p0, v1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_b
    move-exception p0

    goto :goto_17

    :cond_d
    new-instance v1, Lcom/apprichtap/haptic/player/d;

    invoke-direct {v1, p0}, Lcom/apprichtap/haptic/player/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/d;->getRichTapCoreMajorVersion()I

    move-result p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_b

    return p0

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isPlayerTypeAvailable(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    const/4 v1, 0x0

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/apprichtap/haptic/player/d;->a()Z

    move-result p0

    return p0

    :catchall_f
    move-exception p0

    goto :goto_16

    :cond_11
    invoke-static {}, Landroid/os/HapticPlayer;->isAvailable()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_f

    return p0

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_1a
    return v0
.end method


# virtual methods
.method public isPlaying()Z
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_d

    const-string p0, "RichTapPlayer"

    const-string v0, "null == mPlayer!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-interface {p0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public prepare()V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_c

    const-string p0, "RichTapPlayer"

    const-string v0, "null == mPlayer!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface {p0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->prepare()V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->release()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_c

    const-string p0, "RichTapPlayer"

    const-string v0, "null == mPlayer!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface {p0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->reset()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V
    .registers 7

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_c

    const-string p0, "RichTapPlayer"

    const-string p1, "null == mPlayer!"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface/range {p0 .. p6}, Lcom/apprichtap/haptic/player/IHapticPlayer;->setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V

    return-void
.end method

.method public setStartOffsetMillis(I)V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    invoke-interface {p0, p1}, Lcom/apprichtap/haptic/player/IHapticPlayer;->setStartOffsetMillis(I)V

    return-void
.end method

.method public setVibrationAttributes(Landroid/os/VibrationAttributes;)V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    invoke-interface {p0, p1}, Lcom/apprichtap/haptic/player/IHapticPlayer;->setVibrationAttributes(Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_c

    const-string p0, "RichTapPlayer"

    const-string v0, "null == mPlayer!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface {p0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->start()V

    return-void
.end method

.method public stop()V
    .registers 3

    const-string v0, "stop!"

    const-string v1, "RichTapPlayer"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/apprichtap/haptic/RichTapPlayer;->mPlayer:Lcom/apprichtap/haptic/player/IHapticPlayer;

    if-nez p0, :cond_11

    const-string p0, "null == mPlayer!"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-interface {p0}, Lcom/apprichtap/haptic/player/IHapticPlayer;->stop()V

    return-void
.end method
