.class public abstract Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    .line 105
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .registers 0

    .line 118
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
