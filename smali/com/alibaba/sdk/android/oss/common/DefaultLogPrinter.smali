.class public Lcom/alibaba/sdk/android/oss/common/DefaultLogPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/common/LogPrinter;


# static fields
.field private static final TAG:Ljava/lang/String; = "OSS-Android-SDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/alibaba/sdk/android/oss/common/LogLevel;Ljava/lang/String;)V
    .registers 4

    .line 11
    sget-object p0, Lcom/alibaba/sdk/android/oss/common/DefaultLogPrinter$1;->$SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const-string v0, "OSS-Android-SDK"

    if-eq p0, p1, :cond_42

    const/4 p1, 0x2

    if-eq p0, p1, :cond_38

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2e

    const/4 p1, 0x4

    if-eq p0, p1, :cond_24

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1a

    return-void

    .line 25
    :cond_1a
    const-string p0, "[ERROR]: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_24
    const-string p0, "[DEBUG]: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_2e
    const-string p0, "[WARN]: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_38
    const-string p0, "[VERBOSE]: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_42
    const-string p0, "[INFO]: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
