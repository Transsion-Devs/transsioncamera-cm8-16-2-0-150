.class public Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apprichtap/haptic/player/IHapticPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;,
        Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;,
        Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/apprichtap/haptic/player/a;

.field private final c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

.field private final d:Landroid/os/HandlerThread;

.field private final e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;


# direct methods
.method public constructor <init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/apprichtap/haptic/player/a;

    invoke-direct {v0}, Lcom/apprichtap/haptic/player/a;-><init>()V

    iput-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const-string v1, "initialize!"

    const-string v2, "Customizable-Player"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_24

    const-string v1, "CustomizableHapticPlayer() null == performer"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    :cond_24
    iput-object p1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;-><init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$a;)V

    invoke-direct {v0, p1, v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    return-void
.end method

.method static synthetic a(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/IHapticEffectPerformer;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    return-object p0
.end method

.method static synthetic b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    return-object p0
.end method

.method static synthetic c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    return-object p0
.end method

.method static synthetic d(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public isPlaying()Z
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public prepare()V
    .registers 4

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Customizable-Player"

    if-eq v1, v0, :cond_35

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call prepare() in invalid status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", do nothing!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object v0, v0, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprichtap/haptic/base/a;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4a

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object v1, v0, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    :cond_4a
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object v1, v0, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/apprichtap/haptic/player/a;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;)Lc/a;

    move-result-object v0

    invoke-static {v0}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v0, "prepare error, invalid HE"

    invoke-static {v2, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->d()V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const/4 v0, 0x2

    const/16 v1, 0x1001

    invoke-virtual {p0, v0, v1}, Lcom/apprichtap/haptic/player/a;->a(II)V

    return-void

    :cond_6d
    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iput-object v0, v1, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/a;->c()V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object v1, v1, Lcom/apprichtap/haptic/player/a;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->setSenderIdKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->setGain(I)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apprichtap/haptic/player/a;->a(II)V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    const-string v0, "prepared.he"

    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 5

    const-string v0, "Customizable-Player"

    const-string v1, " released!"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    :cond_1a
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->d()V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0, v1, v2}, Lcom/apprichtap/haptic/player/a;->a(II)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2b
    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_32
    return-void
.end method

.method public reset()V
    .registers 5

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    :cond_13
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->d()V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0, v1, v1}, Lcom/apprichtap/haptic/player/a;->a(II)V

    return-void
.end method

.method public seekTo(I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  seekTo() in,  to position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",speed\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Customizable-Player"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget-object v0, v0, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/a;->a(La/c;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string p0, "  seekTo() return - HE invalid or prepare() not be called."

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_32
    int-to-float v0, p1

    iget-object v2, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget v3, v2, Lcom/apprichtap/haptic/player/a;->m:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-ltz v0, :cond_5d

    iget-object v2, v2, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    invoke-virtual {v2}, Lc/a;->getDuration()I

    move-result v2

    if-le v0, v2, :cond_44

    goto :goto_5d

    :cond_44
    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v1, 0x3f0

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    return-void

    :cond_5d
    :goto_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  seekTo() return, position invalid, position:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V
    .registers 9

    iget-object p6, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p6}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p6

    const-string v0, "Customizable-Player"

    if-eqz p6, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setDataSource in invalid status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",do nothing!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    iget-object p6, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p6}, Lcom/apprichtap/haptic/player/a;->d()V

    iget-object p6, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iput-object p1, p6, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    iput p2, p6, Lcom/apprichtap/haptic/player/a;->d:I

    iput p3, p6, Lcom/apprichtap/haptic/player/a;->e:I

    const/4 p1, 0x0

    const/16 v1, 0x1ff

    if-le p2, v1, :cond_3f

    iput v1, p6, Lcom/apprichtap/haptic/player/a;->d:I

    goto :goto_43

    :cond_3f
    if-gez p2, :cond_43

    iput p1, p6, Lcom/apprichtap/haptic/player/a;->d:I

    :cond_43
    :goto_43
    const/16 p2, 0x64

    if-le p3, p2, :cond_4a

    :goto_47
    iput p2, p6, Lcom/apprichtap/haptic/player/a;->e:I

    goto :goto_4f

    :cond_4a
    const/16 p2, -0x64

    if-ge p3, p2, :cond_4f

    goto :goto_47

    :cond_4f
    :goto_4f
    if-ltz p4, :cond_55

    add-int/lit8 p2, p4, 0x1

    iput p2, p6, Lcom/apprichtap/haptic/player/a;->c:I

    :cond_55
    const/4 p2, -0x1

    if-ne p2, p4, :cond_5d

    const p2, 0x7fffffff

    iput p2, p6, Lcom/apprichtap/haptic/player/a;->c:I

    :cond_5d
    if-ltz p5, :cond_61

    iput p5, p6, Lcom/apprichtap/haptic/player/a;->f:I

    :cond_61
    const-string p2, "will change to initialized!"

    invoke-static {v0, p2}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/apprichtap/haptic/player/a;->a(II)V

    return-void
.end method

.method public setStartOffsetMillis(I)V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iput p1, p0, Lcom/apprichtap/haptic/player/a;->j:I

    return-void
.end method

.method public setVibrationAttributes(Landroid/os/VibrationAttributes;)V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c:Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    invoke-interface {p0, p1}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->setVibrationAttributes(Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public start()V
    .registers 5

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x9

    const-string v3, "Customizable-Player"

    if-eq v1, v0, :cond_3e

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_3e

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    if-eq v2, v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call start() in invalid status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", do nothing!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  start() in, mCurrentHePausePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v1, 0x0

    if-ne v2, v0, :cond_68

    const-string v0, "  start() return, already COMPLETED, start from 0"

    invoke-static {v3, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iput v1, v0, Lcom/apprichtap/haptic/player/a;->i:I

    :cond_68
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/apprichtap/haptic/player/a;->a(II)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    iget v0, v0, Lcom/apprichtap/haptic/player/a;->j:I

    if-lez v0, :cond_83

    invoke-virtual {p0, v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->seekTo(I)V

    :cond_83
    return-void
.end method

.method public stop()V
    .registers 5

    const-string v0, "stop!"

    const-string v1, "Customizable-Player"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v2, 0x6

    if-eq v2, v0, :cond_43

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/4 v2, 0x7

    if-eq v2, v0, :cond_43

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    const/16 v2, 0x9

    if-eq v2, v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call stop() in invalid status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {p0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", do nothing!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->e:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    iget-object v0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->d()V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b:Lcom/apprichtap/haptic/player/a;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    return-void
.end method
