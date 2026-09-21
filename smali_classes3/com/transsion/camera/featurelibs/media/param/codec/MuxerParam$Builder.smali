.class public Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mOrientationHint:I

.field private mOutputFormat:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFileDescriptor(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)Ljava/io/FileDescriptor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationHint(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mOrientationHint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputFormat(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mOutputFormat:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mOutputFormat:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;
    .registers 2

    .line 95
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;-><init>(Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;)V

    return-object v0
.end method

.method public fileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public filePath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public orientationHint(I)Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;
    .registers 2

    .line 90
    iput p1, p0, Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam$Builder;->mOrientationHint:I

    return-object p0
.end method
