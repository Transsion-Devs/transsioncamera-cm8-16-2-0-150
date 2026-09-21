.class public Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;
    }
.end annotation


# instance fields
.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mFilePath:Ljava/lang/String;

.field private final mOrientationHint:I

.field private final mOutputFormat:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->-$$Nest$fgetmFileDescriptor(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->-$$Nest$fgetmFilePath(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFilePath:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->-$$Nest$fgetmOutputFormat(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOutputFormat:I

    .line 34
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->-$$Nest$fgetmOrientationHint(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOrientationHint:I

    return-void
.end method


# virtual methods
.method public fileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public filePath()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public orientationHint()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOrientationHint:I

    return p0
.end method

.method public outputFormat()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOutputFormat:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MuxerParam{mFileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOutputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientationHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;->mOrientationHint:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
