.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;
    }
.end annotation


# static fields
.field public static final ACTION_ATHENA_STATE_CHANGED:Ljava/lang/String; = "com.transsion.log.ATHENA_STATE_CHANGED"

.field private static final PARAMETER_NULL_INFO:Ljava/lang/String; = "Parameter must not null!!!"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final TAG:Ljava/lang/String; = "TranTrancareManager"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static appRequest(I)V
    .registers 2

    .line 90
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 94
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->appRequestInternal(I)V

    return-void

    .line 92
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static feedBack(Ljava/lang/String;Z)V
    .registers 3

    .line 750
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 754
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->feedBackInternal(Ljava/lang/String;Z)V

    return-void

    .line 752
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 492
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 496
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 494
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsBooleanArray(Ljava/lang/String;Ljava/lang/String;Z)[Z
    .registers 4

    .line 589
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 593
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Z

    move-result-object p0

    return-object p0

    .line 591
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsBooleanDef(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 5

    .line 512
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 516
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsBooleanDefInternal(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    .line 514
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsLong(Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 4

    .line 531
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 535
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongInternal(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0

    .line 533
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsLongArray(Ljava/lang/String;Ljava/lang/String;Z)[J
    .registers 4

    .line 608
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 612
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[J

    move-result-object p0

    return-object p0

    .line 610
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsLongDef(Ljava/lang/String;Ljava/lang/String;ZJ)J
    .registers 11

    .line 551
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 555
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsLongDefInternal(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide p0

    return-wide p0

    .line 553
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 453
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 457
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 455
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsStringArray(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 4

    .line 570
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 574
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 572
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAsStringDef(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 473
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 477
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getAsStringDefInternal(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 475
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 416
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 420
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getConfigInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 418
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getConfigStatic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 434
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 438
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getConfigStaticInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 436
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 399
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 403
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultConfigInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDefaultFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 382
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 386
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDefaultFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 346
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 350
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getDefaultFilePathInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 292
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 296
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getEnabledInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 294
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEnabledAsName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 312
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 316
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getEnabledAsNameInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 314
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 364
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 368
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 366
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 329
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 333
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->getFilePathInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEnabled(J)Z
    .registers 3

    .line 107
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 111
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->isEnabledInternal(J)Z

    move-result p0

    return p0

    .line 109
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 661
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 665
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 663
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsBooleanArray(Ljava/lang/String;Ljava/lang/String;[Z)V
    .registers 4

    .line 715
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 719
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-void

    .line 717
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsLong(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 679
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 683
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsLongInternal(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    .line 681
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsLongArray(Ljava/lang/String;Ljava/lang/String;[J)V
    .registers 4

    .line 733
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 737
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;[J)V

    return-void

    .line 735
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 643
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 647
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsStringInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 645
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 697
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 701
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 699
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 625
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 629
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->putConfigInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 627
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 4

    .line 768
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p2, :cond_c

    .line 777
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->regCloudEngineCallbackInternal(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    return-void

    .line 774
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 770
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 2

    .line 46
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_c

    .line 55
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->regTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    return-void

    .line 52
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Parameter must not null!!!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(ILjava/lang/String;)V
    .registers 3

    .line 251
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 255
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;)V

    return-void

    .line 253
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 134
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 138
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 136
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 229
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 233
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    return-void

    .line 231
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(JLjava/lang/String;)V
    .registers 4

    .line 273
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 277
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;)V

    return-void

    .line 275
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V
    .registers 11

    .line 161
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_e

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 165
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 163
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 199
    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    return-void

    .line 197
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 4

    .line 790
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_12

    .line 795
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 799
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->unregCloudEngineCallbackInternal(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    return-void

    .line 796
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter must not null!!!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 2

    .line 67
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_c

    .line 76
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->unregTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    return-void

    .line 73
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Parameter must not null!!!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
