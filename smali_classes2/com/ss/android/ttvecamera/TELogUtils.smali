.class public Lcom/ss/android/ttvecamera/TELogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TELogUtils$DefaultLog;,
        Lcom/ss/android/ttvecamera/TELogUtils$ILog;
    }
.end annotation


# static fields
.field private static APPNAME:Ljava/lang/String; = "VESDK-"

.field private static AUTO_TEST_MONITOR:Ljava/lang/String; = "monitorInfo"

.field private static DEBUG_LEVEL:B = 0x3t

.field public static final DEBUG_LEVEL_D:B = 0xft

.field public static final DEBUG_LEVEL_E:B = 0x1t

.field public static final DEBUG_LEVEL_I:B = 0x7t

.field public static final DEBUG_LEVEL_N:B = 0x0t

.field public static final DEBUG_LEVEL_V:B = 0x1ft

.field public static final DEBUG_LEVEL_W:B = 0x3t

.field public static final LOGD:B = 0x8t

.field public static final LOGE:B = 0x1t

.field public static final LOGI:B = 0x4t

.field public static final LOGV:B = 0x10t

.field public static final LOGW:B = 0x2t

.field public static final TEST_LOG_FLAG:Z = false

.field private static volatile mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/ss/android/ttvecamera/TELogUtils$DefaultLog;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TELogUtils$DefaultLog;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 122
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 124
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 199
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_38

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n***StackTrace***\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 143
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 150
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n***StackTrace***\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public static getAndroidLogLevel(B)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v1, 0x7

    if-eq p0, v1, :cond_16

    const/16 v1, 0xf

    if-eq p0, v1, :cond_15

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x2

    return p0

    :cond_15
    return v0

    :cond_16
    const/4 p0, 0x4

    return p0

    :cond_18
    const/4 p0, 0x5

    return p0

    :cond_1a
    const/4 p0, 0x6

    return p0
.end method

.method public static getLogLevel()B
    .registers 1

    .line 223
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    return v0
.end method

.method public static getLogLevel(I)B
    .registers 3

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v1, 0x4

    if-eq p0, v1, :cond_14

    const/4 v1, 0x5

    if-eq p0, v1, :cond_13

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x7

    return p0

    :cond_16
    const/16 p0, 0xf

    return p0

    :cond_19
    const/16 p0, 0x1f

    return p0
.end method

.method public static getStackTraceString()Ljava/lang/String;
    .registers 1

    .line 249
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 115
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 109
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_23

    .line 110
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->AUTO_TEST_MONITOR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public static printStackTrace()V
    .registers 2

    .line 245
    const-string v0, "Debug"

    invoke-static {}, Lcom/ss/android/ttvecamera/TELogUtils;->getStackTraceString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Lcom/ss/android/ttvecamera/TELogUtils$ILog;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 63
    sput-object p0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    return-void

    .line 65
    :cond_5
    new-instance p0, Lcom/ss/android/ttvecamera/TELogUtils$DefaultLog;

    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TELogUtils$DefaultLog;-><init>()V

    sput-object p0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    return-void
.end method

.method public static setUp(Ljava/lang/String;B)V
    .registers 3

    if-eqz p0, :cond_1b

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    .line 54
    :cond_1b
    sput-byte p1, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    return-void
.end method

.method public static setUp(Ljava/lang/String;I)V
    .registers 2

    .line 58
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TELogUtils;->getLogLevel(I)B

    move-result p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->setUp(Ljava/lang/String;B)V

    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 164
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 157
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 185
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_38

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n***StackTrace***\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 129
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 136
    sget-byte v0, Lcom/ss/android/ttvecamera/TELogUtils;->DEBUG_LEVEL:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ss/android/ttvecamera/TELogUtils;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    sget-object v0, Lcom/ss/android/ttvecamera/TELogUtils;->mLogOutput:Lcom/ss/android/ttvecamera/TELogUtils$ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n***StackTrace***\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils$ILog;->Log(BLjava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method
