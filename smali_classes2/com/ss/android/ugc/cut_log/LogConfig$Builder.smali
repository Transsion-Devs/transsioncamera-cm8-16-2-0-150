.class public final Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_log/LogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field private localPath:Ljava/lang/String;

.field private logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field private showThreadInfo:Z

.field private toLocal:Z

.field private toLogcat:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->showThreadInfo:Z

    .line 46
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;->DEBUG:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    .line 53
    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-void
.end method


# virtual methods
.method public final build()Lcom/ss/android/ugc/cut_log/LogConfig;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 64
    new-instance v0, Lcom/ss/android/ugc/cut_log/LogConfig;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/cut_log/LogConfig;-><init>(Lcom/ss/android/ugc/cut_log/LogConfig$Builder;)V

    return-object v0

    .line 62
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "localPath is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLocalLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogcatLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final getShowThreadInfo()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->showThreadInfo:Z

    return p0
.end method

.method public final getToLocal()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLocal:Z

    return p0
.end method

.method public final getToLogcat()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLogcat:Z

    return p0
.end method

.method public final localLevel(Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 3

    const-string v0, "localLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final localPath(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 3

    const-string v0, "localPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final logcatLevel(Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 3

    const-string v0, "logcatLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final showThreadInfo(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->showThreadInfo:Z

    return-object p0
.end method

.method public final toLocal(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLocal:Z

    return-object p0
.end method

.method public final toLogcat(Z)Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->toLogcat:Z

    return-object p0
.end method
