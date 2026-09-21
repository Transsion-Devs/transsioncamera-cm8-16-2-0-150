.class public abstract Lcom/tencent/youtu/ximage/YTCommonInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static initAuthByString(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    if-nez p1, :cond_4

    .line 67
    const-string p1, ""

    .line 69
    :cond_4
    invoke-static {p0, p1}, Lcom/tencent/youtu/ximage/YTCommonInterface;->nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I
.end method
