.class public final Lcom/ss/android/ugc/cut_log/LogConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_log/LogConfig$Builder;
    }
.end annotation


# instance fields
.field private final localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field private final localPath:Ljava/lang/String;

.field private final logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

.field private final showThreadInfo:Z

.field private final toLocal:Z

.field private final toLogcat:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/cut_log/LogConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getToLogcat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->toLogcat:Z

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getToLocal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->toLocal:Z

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getShowThreadInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->showThreadInfo:Z

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->localPath:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getLogcatLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    .line 12
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_log/LogConfig$Builder;->getLocalLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-void
.end method


# virtual methods
.method public final getLocalLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->localLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final getLocalPath()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->localPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getLogcatLevel()Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->logcatLevel:Lcom/ss/android/ugc/cut_log/LogIF$LOG_LEVER;

    return-object p0
.end method

.method public final getShowThreadInfo()Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->showThreadInfo:Z

    return p0
.end method

.method public final getToLocal()Z
    .registers 1

    .line 8
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->toLocal:Z

    return p0
.end method

.method public final getToLogcat()Z
    .registers 1

    .line 7
    iget-boolean p0, p0, Lcom/ss/android/ugc/cut_log/LogConfig;->toLogcat:Z

    return p0
.end method
