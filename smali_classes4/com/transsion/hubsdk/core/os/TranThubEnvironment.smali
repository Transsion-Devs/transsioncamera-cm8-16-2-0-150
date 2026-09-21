.class public Lcom/transsion/hubsdk/core/os/TranThubEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranEnvironmentAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 21
    invoke-static {p1}, Lcom/transsion/hubsdk/os/TranEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDataVendorDeDirectory(I)Ljava/io/File;
    .registers 2

    .line 31
    invoke-static {p1}, Lcom/transsion/hubsdk/os/TranEnvironment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getProductDirectory()Ljava/io/File;
    .registers 1

    .line 26
    invoke-static {}, Lcom/transsion/hubsdk/os/TranEnvironment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
