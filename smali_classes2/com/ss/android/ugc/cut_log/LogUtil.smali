.class public final Lcom/ss/android/ugc/cut_log/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/android/ugc/cut_log/LogUtil;

.field private static log:Lcom/ss/android/ugc/cut_log/LogIF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_log/LogUtil;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_log/LogUtil;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->INSTANCE:Lcom/ss/android/ugc/cut_log/LogUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0, p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0, p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0, p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0, p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v0, p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getLogIF()Lcom/ss/android/ugc/cut_log/LogIF;
    .registers 1

    .line 12
    sget-object p0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    return-object p0
.end method

.method public final setLogEnable(Z)V
    .registers 2

    .line 16
    sget-object p0, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_log/LogIF;->setLogEnable(Z)V

    return-void
.end method

.method public final setLogIF(Lcom/ss/android/ugc/cut_log/LogIF;)V
    .registers 2

    const-string p0, "logIF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sput-object p1, Lcom/ss/android/ugc/cut_log/LogUtil;->log:Lcom/ss/android/ugc/cut_log/LogIF;

    return-void
.end method
