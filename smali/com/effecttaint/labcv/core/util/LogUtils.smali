.class public abstract Lcom/effecttaint/labcv/core/util/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isDebug:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 37
    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 24
    sget-boolean v0, Lcom/effecttaint/labcv/core/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_9

    .line 25
    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
