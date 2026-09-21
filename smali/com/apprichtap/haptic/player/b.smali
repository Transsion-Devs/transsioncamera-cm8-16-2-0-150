.class public Lcom/apprichtap/haptic/player/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apprichtap/haptic/player/IHapticEffectPerformer;


# instance fields
.field private a:Landroid/os/Vibrator;

.field private b:Landroid/os/VibrationAttributes;


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    const-string p0, "GooglePerformer"

    const-string p1, "GooglePerformer(Vibrator), vibrator == null"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iput-object p1, p0, Lcom/apprichtap/haptic/player/b;->a:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public setVibrationAttributes(Landroid/os/VibrationAttributes;)V
    .registers 2

    iput-object p1, p0, Lcom/apprichtap/haptic/player/b;->b:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_9a

    const-string v2, "GooglePerformer"

    if-eqz p1, :cond_94

    :try_start_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq p1, v3, :cond_25

    goto :goto_94

    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timings:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",amplitudes:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_77

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v3, -0x1

    if-lt v0, v1, :cond_8a

    iget-object v0, p0, Lcom/apprichtap/haptic/player/b;->a:Landroid/os/Vibrator;

    invoke-static {p1, v2, v3}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/apprichtap/haptic/player/b;->b:Landroid/os/VibrationAttributes;

    invoke-static {v0, p1, p0}, Lcom/apprichtap/haptic/player/b$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void

    :cond_8a
    iget-object p0, p0, Lcom/apprichtap/haptic/player/b;->a:Landroid/os/Vibrator;

    invoke-static {p1, v2, v3}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    :cond_94
    :goto_94
    const-string p0, "start(String), invalid timings and amplitudes!"

    invoke-static {v2, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_1a .. :try_end_99} :catchall_9a

    return-void

    :catchall_9a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object p0, p0, Lcom/apprichtap/haptic/player/b;->a:Landroid/os/Vibrator;

    if-nez p0, :cond_c

    const-string p0, "GooglePerformer"

    const-string v0, "stop(), null == mVibrator!"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method
