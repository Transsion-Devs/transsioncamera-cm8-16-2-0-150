.class public abstract Lcom/transsion/camera/utils/debug/AnimationTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static beginAsync(Ljava/lang/String;I)V
    .registers 2

    .line 24
    invoke-static {p0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public static endASync(Ljava/lang/String;I)V
    .registers 2

    .line 20
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
