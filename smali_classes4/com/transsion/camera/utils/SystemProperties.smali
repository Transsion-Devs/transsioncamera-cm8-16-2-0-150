.class public abstract Lcom/transsion/camera/utils/SystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SysProps"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/SystemProperties;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;I)J
    .registers 4

    int-to-long v0, p1

    .line 34
    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 46
    sget-object p1, Lcom/transsion/camera/utils/SystemProperties;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Exception while setting system property: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
