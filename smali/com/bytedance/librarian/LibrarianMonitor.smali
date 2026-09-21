.class public Lcom/bytedance/librarian/LibrarianMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected logDebug(Ljava/lang/String;)V
    .registers 2

    .line 10
    const-string p0, "librarian"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logError(Ljava/lang/String;)V
    .registers 2

    .line 22
    const-string p0, "librarian"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 26
    const-string p0, "librarian"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logWarning(Ljava/lang/String;)V
    .registers 2

    .line 14
    const-string p0, "librarian"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 18
    const-string p0, "librarian"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected systemLoad(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method protected systemLoadLibrary(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
