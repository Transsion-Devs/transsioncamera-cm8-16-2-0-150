.class public Lcom/apprichtap/haptic/player/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apprichtap/haptic/player/IHapticEffectPerformer;


# static fields
.field static b:Ljava/lang/String; = "TencentPerformer"


# instance fields
.field a:Landroid/os/HapticPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/DynamicEffect;->create(Ljava/lang/String;)Landroid/os/DynamicEffect;

    move-result-object p1

    new-instance v1, Landroid/os/HapticPlayer;

    invoke-direct {v1, p1}, Landroid/os/HapticPlayer;-><init>(Landroid/os/DynamicEffect;)V

    iput-object v1, p0, Lcom/apprichtap/haptic/player/e;->a:Landroid/os/HapticPlayer;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_24

    const/4 p1, 0x0

    const/16 v2, 0xff

    :try_start_13
    invoke-virtual {v1, v0, p1, v2}, Landroid/os/HapticPlayer;->start(III)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodError; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_24

    return-void

    :catch_17
    :try_start_17
    sget-object p1, Lcom/apprichtap/haptic/player/e;->b:Ljava/lang/String;

    const-string v1, "no method HapticPlayer.start(loop, interval, amplitude), in TIMED_VIBRATION"

    invoke-static {p1, v1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/apprichtap/haptic/player/e;->a:Landroid/os/HapticPlayer;

    invoke-virtual {p0, v0}, Landroid/os/HapticPlayer;->start(I)V
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_28
    return-void
.end method

.method public stop()V
    .registers 3

    sget-object v0, Lcom/apprichtap/haptic/player/e;->b:Ljava/lang/String;

    const-string v1, "stop!"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/apprichtap/haptic/player/e;->a:Landroid/os/HapticPlayer;

    if-nez p0, :cond_13

    sget-object p0, Lcom/apprichtap/haptic/player/e;->b:Ljava/lang/String;

    const-string v0, "stop(), HapticsPlayer is null"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Landroid/os/HapticPlayer;->stop()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
