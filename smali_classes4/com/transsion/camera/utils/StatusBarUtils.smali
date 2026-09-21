.class public abstract Lcom/transsion/camera/utils/StatusBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StatusBarUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/StatusBarUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static disable()V
    .registers 3

    .line 26
    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;-><init>()V

    const/high16 v1, 0x1610000

    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->disable(I)V

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/StatusBarUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Status bar disabled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 33
    sget-object v1, Lcom/transsion/camera/utils/StatusBarUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to disable status bar"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enable()V
    .registers 3

    .line 42
    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;-><init>()V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->disable(I)V

    .line 44
    sget-object v0, Lcom/transsion/camera/utils/StatusBarUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Status bar enabled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 46
    sget-object v1, Lcom/transsion/camera/utils/StatusBarUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to enable status bar"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
