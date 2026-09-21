.class public Lcom/tetras/hand/CvLicenseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLicense(Ljava/lang/String;)I
    .registers 1

    .line 6
    invoke-static {p0}, Lcom/tetras/hand/CvHandLibrary;->initLicense(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
