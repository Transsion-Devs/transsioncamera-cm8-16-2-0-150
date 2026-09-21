.class public Lcom/apprichtap/haptic/player/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apprichtap/haptic/player/IHapticEffectPerformer;


# static fields
.field public static k:I = -0x1

.field public static l:I = -0x1


# instance fields
.field private a:Landroid/os/Vibrator;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Z

.field private g:I

.field private h:Landroid/os/VibrationAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "RichTapPerformer"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/apprichtap/haptic/player/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xff

    iput v1, p0, Lcom/apprichtap/haptic/player/d;->g:I

    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->b:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->a:Landroid/os/Vibrator;

    const/4 p1, 0x0

    :try_start_1d
    const-string v1, "richtap.os.PhonyVibrationEffect"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_2d

    :catch_26
    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    const-string v1, "failed to reflect class: \"richtap.os.PhonyVibrationEffect\"!"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    iget-object v1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    if-nez v1, :cond_41

    :try_start_31
    const-string v1, "android.os.RichTapVibrationEffect"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    const-string p1, "failed to reflect class: \"android.os.RichTapVibrationEffect\"!"

    invoke-static {v0, p1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    if-nez p1, :cond_53

    :try_start_45
    const-string p1, "android.os.VibrationEffect"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_4d} :catch_4e

    goto :goto_53

    :catch_4e
    const-string p1, "failed to reflect class: \"android.os.VibrationEffect\"!"

    invoke-static {v0, p1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/apprichtap/haptic/player/d;->b()V

    return-void
.end method

.method private a(III)V
    .registers 8

    .line 0
    sget v0, Lcom/apprichtap/haptic/player/d;->k:I

    const-string v1, "RichTapPerformer"

    if-gtz v0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyPatternHeParam, CORE_MAJOR_VERSION:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/apprichtap/haptic/player/d;->k:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPatternHeParam, interval:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", amplitude:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",freq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    const-string v2, "createPatternHeParameter"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/apprichtap/haptic/player/d;->a:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_6c

    return-void

    :catchall_6c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "The system doesn\'t integrate RichTap software"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .registers 5

    .line 0
    const-string v0, "RichTapPerformer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "richtap.os.PhonyVibrationEffect"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_a} :catch_d
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception v0

    goto :goto_46

    :catch_d
    :try_start_d
    const-string v3, "failed to reflect class: \"richtap.os.PhonyVibrationEffect\"!"

    invoke-static {v0, v3}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_b

    move-object v3, v2

    :goto_13
    if-nez v3, :cond_22

    :try_start_15
    const-string v3, "android.os.RichTapVibrationEffect"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catchall {:try_start_15 .. :try_end_1b} :catchall_b

    goto :goto_22

    :catch_1c
    :try_start_1c
    const-string v3, "failed to reflect class: \"android.os.RichTapVibrationEffect\"!"

    invoke-static {v0, v3}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_b

    move-object v3, v2

    :cond_22
    :goto_22
    if-nez v3, :cond_30

    :try_start_24
    const-string v4, "android.os.VibrationEffect"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_2a} :catch_2b
    .catchall {:try_start_24 .. :try_end_2a} :catchall_b

    goto :goto_30

    :catch_2b
    :try_start_2b
    const-string v4, "failed to reflect class: \"android.os.VibrationEffect\"!"

    invoke-static {v0, v4}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    const-string v0, "checkIfRichTapSupport"

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_b

    const/4 v2, 0x2

    if-ne v2, v0, :cond_44

    return v1

    :cond_44
    const/4 v0, 0x1

    return v0

    :goto_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/apprichtap/haptic/player/d;->b:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_72

    const-string v1, "RichTapPerformer"

    if-eqz v0, :cond_6c

    :try_start_6
    iget-object v0, p0, Lcom/apprichtap/haptic/player/d;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_b

    goto :goto_6c

    :cond_b
    iget-object p0, p0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    const-string v0, "checkIfRichTapSupport"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRichTapCoreMajorVersion check framework RichTap version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p0, :cond_36

    return-void

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " majorVersion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " minorVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput v2, Lcom/apprichtap/haptic/player/d;->k:I

    sput p0, Lcom/apprichtap/haptic/player/d;->l:I

    return-void

    :cond_6c
    :goto_6c
    const-string p0, "getRichTapCoreMajorVersion mContext or mVibrator null"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_72

    return-void

    :catchall_72
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public getRichTapCoreMajorVersion()I
    .registers 1

    sget p0, Lcom/apprichtap/haptic/player/d;->k:I

    return p0
.end method

.method public setGain(I)V
    .registers 4

    iget-object v0, p0, Lcom/apprichtap/haptic/player/d;->b:Landroid/content/Context;

    const-string v1, "RichTapPerformer"

    if-nez v0, :cond_c

    const-string p0, "set gain null == mContext"

    invoke-static {v1, p0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_14

    const-string p1, "0 == gain"

    invoke-static {v1, p1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/apprichtap/haptic/player/d;->a(III)V

    iput p1, p0, Lcom/apprichtap/haptic/player/d;->g:I

    return-void
.end method

.method public setSenderIdKey(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSenderIdKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RichTapPerformer"

    invoke-static {v1, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->d:Ljava/lang/String;

    return-void
.end method

.method public setVibrationAttributes(Landroid/os/VibrationAttributes;)V
    .registers 2

    iput-object p1, p0, Lcom/apprichtap/haptic/player/d;->h:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/apprichtap/haptic/player/d;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    invoke-static {v3}, Lcom/apprichtap/haptic/base/c;->a(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_12

    :cond_11
    move-object v3, v4

    :goto_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v6, Lcom/apprichtap/haptic/player/d;->k:I

    const-string v7, "RichTapPerformer"

    if-gtz v6, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(), mRichTapCoreMajorVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/apprichtap/haptic/player/d;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const/16 v8, 0x17

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lt v8, v6, :cond_40

    move-object/from16 v6, p1

    invoke-static {v6, v10}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move v12, v10

    :goto_3e
    move-object v11, v6

    goto :goto_44

    :cond_40
    move-object/from16 v6, p1

    move v12, v9

    goto :goto_3e

    :goto_44
    if-eqz v3, :cond_52

    array-length v6, v3

    if-eq v9, v6, :cond_4a

    goto :goto_52

    :cond_4a
    aget v1, v3, v1

    aget v3, v3, v10

    :goto_4e
    move v15, v1

    move/from16 v16, v3

    goto :goto_61

    :cond_52
    :goto_52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v3, v0, Lcom/apprichtap/haptic/player/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const v6, 0x7fffffff

    rem-int/2addr v3, v6

    goto :goto_4e

    :goto_61
    sget v13, Lcom/apprichtap/haptic/player/d;->k:I

    sget v14, Lcom/apprichtap/haptic/player/d;->l:I

    iget-boolean v1, v0, Lcom/apprichtap/haptic/player/d;->f:Z

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Lcom/apprichtap/haptic/base/a;->a(Ljava/lang/String;IIIIIZ)[I

    move-result-object v1

    :try_start_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start() mGain:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/apprichtap/haptic/player/d;->g:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " raw data:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/apprichtap/haptic/player/d;->c:Ljava/lang/Class;

    const-string v6, "createPatternHeWithParam"

    const-class v8, [I

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v9, v9, v9, v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v8, v0, Lcom/apprichtap/haptic/player/d;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v1, v6, v2, v8, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    const/16 v2, 0x21

    if-lt v5, v2, :cond_c1

    iget-object v2, v0, Lcom/apprichtap/haptic/player/d;->a:Landroid/os/Vibrator;

    iget-object v0, v0, Lcom/apprichtap/haptic/player/d;->h:Landroid/os/VibrationAttributes;

    invoke-static {v2, v1, v0}, Lcom/apprichtap/haptic/player/b$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void

    :catchall_bf
    move-exception v0

    goto :goto_c7

    :cond_c1
    iget-object v0, v0, Lcom/apprichtap/haptic/player/d;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_c6
    .catchall {:try_start_6d .. :try_end_c6} :catchall_bf

    return-void

    :goto_c7
    const-string v1, "The system doesn\'t integrate richTap software"

    invoke-static {v7, v1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public stop()V
    .registers 3

    const-string v0, "RichTapPerformer"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/apprichtap/haptic/player/d;->a(III)V

    return-void
.end method
