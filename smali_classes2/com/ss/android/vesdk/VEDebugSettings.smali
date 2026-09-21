.class public Lcom/ss/android/vesdk/VEDebugSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEDebugSettings$Builder;,
        Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEDebugSettings"


# instance fields
.field private mCaptureDir:Ljava/lang/String;

.field private mEnableImageDump:Z

.field private mImageDumpDir:Ljava/lang/String;

.field private mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

.field private mPreviewDir:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    .line 29
    sget-object v0, Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;->CAPTURE:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    .line 30
    const-string v0, "sdcard/vemo"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "capture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VEDebugSettings$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEDebugSettings;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEDebugSettings;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEDebugSettings;Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;)Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCapDumpDir()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableImageDump()Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    return p0
.end method

.method public getImageDumpDir()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    return-object p0
.end method

.method public getImageDumpType()Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    return-object p0
.end method

.method public getImageDumpTypeValue()I
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getPrvDumpDir()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .registers 6

    .line 171
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    if-eqz v0, :cond_a1

    .line 172
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "}"

    const-string v3, "VEDebugSettings"

    if-nez v1, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_37

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump directory is not exist, so do mkdir {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 179
    :cond_37
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDebugSettings;->isNeedDumpCapture()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 180
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump capture directory is not exist, so do mkdir {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 188
    :cond_6c
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDebugSettings;->isNeedDumpPreview()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump preview directory is not exist, so do mkdir {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_a1
    return-void
.end method

.method public isNeedDumpCapture()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    if-eqz v0, :cond_10

    .line 145
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    sget-object v0, Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;->BOTH:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;->CAPTURE:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDumpPreview()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    if-eqz v0, :cond_10

    .line 159
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    sget-object v0, Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;->BOTH:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;->PREVIEW:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugSettings{mEnableImageDump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImageDumpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImageDumpDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
