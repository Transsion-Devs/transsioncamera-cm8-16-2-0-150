.class public abstract Lcom/transsion/camera/utils/debug/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/debug/Log$Tag;
    }
.end annotation


# static fields
.field private static final IS_DEBUG_OS_BUILD:Z

.field private static sDebugLogEnable:Z

.field private static sExtraLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/debug/Log;->IS_DEBUG_OS_BUILD:Z

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sExtraLogEnable:Z

    return-void
.end method

.method public static d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isTraceLoggable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 114
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isTraceLoggable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 137
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isTraceLoggable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 167
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static iTrace(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 3

    .line 146
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    if-eqz v0, :cond_d

    .line 147
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 149
    :cond_d
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static isDebugLogEnable()Z
    .registers 1

    .line 86
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    return v0
.end method

.method private static isDebugOsBuild()Z
    .registers 2

    .line 237
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "persist.user.root.support"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method

.method public static isDetectionLoggable()Z
    .registers 2

    .line 241
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sExtraLogEnable:Z

    if-nez v0, :cond_10

    const-string v0, "CamAp_detect"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public static isDrawFrameLoggable()Z
    .registers 2

    .line 245
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sExtraLogEnable:Z

    if-nez v0, :cond_10

    const-string v0, "CamAp_draw"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 4

    .line 224
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 227
    :cond_6
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->IS_DEBUG_OS_BUILD:Z

    if-nez v0, :cond_13

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->shouldLog(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    return v1
.end method

.method public static isTraceLoggable()Z
    .registers 2

    .line 249
    sget-boolean v0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    if-nez v0, :cond_10

    const-string v0, "CamAp_trace"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public static logDetection(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 3

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDetectionLoggable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static logDrawing(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 3

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isDrawFrameLoggable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static setDebugLogEnable(Z)V
    .registers 1

    .line 82
    sput-boolean p0, Lcom/transsion/camera/utils/debug/Log;->sDebugLogEnable:Z

    return-void
.end method

.method public static setExtraLogEnable(Z)V
    .registers 1

    .line 48
    sput-boolean p0, Lcom/transsion/camera/utils/debug/Log;->sExtraLogEnable:Z

    return-void
.end method

.method private static shouldLog(Ljava/lang/String;I)Z
    .registers 3

    .line 232
    const-string v0, "CamAp_"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 4

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public static w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 216
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->isTraceLoggable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 219
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
