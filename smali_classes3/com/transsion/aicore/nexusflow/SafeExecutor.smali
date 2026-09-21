.class public final Lcom/transsion/aicore/nexusflow/SafeExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/SafeExecutor;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final safeUnlinkToDeath(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;ILjava/lang/String;)Z
    .registers 11

    const-string p0, "recipient"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tag"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_19

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Binder is null, cannot unlink death recipient"

    const/4 v3, 0x0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return p0

    :cond_19
    move-object v1, p4

    .line 6
    :try_start_1a
    invoke-interface {p1, p2, p3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 7
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p2, "Successfully unlinked death recipient"

    invoke-virtual {p1, v1, p2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_1a .. :try_end_24} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_2c
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_24} :catch_29
    .catchall {:try_start_1a .. :try_end_24} :catchall_26

    const/4 p0, 0x1

    return p0

    :catchall_26
    move-exception v0

    move-object p1, v0

    goto :goto_32

    :catch_29
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    :catch_2c
    move-exception v0

    move-object p1, v0

    goto :goto_42

    :catch_2f
    move-exception v0

    move-object p1, v0

    goto :goto_4a

    .line 20
    :goto_32
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p3, "Failed to unlink death recipient with Throwable"

    invoke-virtual {p2, v1, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 21
    :goto_3a
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p3, "Failed to unlink death recipient with Error"

    invoke-virtual {p2, v1, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 22
    :goto_42
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p3, "Failed to unlink death recipient"

    invoke-virtual {p2, v1, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 23
    :goto_4a
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p3, "Death link does not exist, already unlinked or never linked"

    invoke-virtual {p2, v1, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    return p0
.end method
