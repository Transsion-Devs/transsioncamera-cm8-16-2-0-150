.class public Lcom/ss/android/medialib/qr/ScanSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/qr/ScanSettings$Requirement;
    }
.end annotation


# instance fields
.field public buildChainFlag:I

.field public detectModelDir:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public detectRectHeight:F

.field public detectRectLeft:F

.field public detectRectTop:F

.field public detectRectWidth:F

.field public detectRequirement:J

.field public enableDetectRect:Z

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->width:I

    .line 46
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->height:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRectLeft:F

    .line 59
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRectTop:F

    .line 64
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRectWidth:F

    .line 69
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRectHeight:F

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->enableDetectRect:Z

    const-wide/32 v0, 0x10000

    .line 79
    iput-wide v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRequirement:J

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->buildChainFlag:I

    return-void
.end method


# virtual methods
.method public getBuildChainFlag()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->buildChainFlag:I

    return p0
.end method

.method public getDetectModelDir()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectModelDir:Ljava/lang/String;

    return-object p0
.end method

.method public getDetectRequirement()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRequirement:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->width:I

    return p0
.end method
