.class public Lcom/transsion/hubsdk/core/os/TranThubSELinux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranSELinuxAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restorecon(Ljava/io/File;)Z
    .registers 2

    .line 19
    new-instance p0, Lcom/transsion/hubsdk/os/TranSELinux;

    invoke-direct {p0}, Lcom/transsion/hubsdk/os/TranSELinux;-><init>()V

    invoke-static {p1}, Lcom/transsion/hubsdk/os/TranSELinux;->restorecon(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
