.class public Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec$AudioEffectRenderCallback;
    }
.end annotation


# instance fields
.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mFileExt:Ljava/lang/String;

.field private final mFileFolder:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileTempPath:Ljava/lang/String;

.field private mFileTitle:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec$AudioEffectRenderCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec$AudioEffectRenderCallback;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileExt:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileFolder:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createFileData(Ljava/lang/String;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileName:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTempPath()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTitle()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setFileTempPath(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->mFileTempPath:Ljava/lang/String;

    return-void
.end method
