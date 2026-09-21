.class public Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dateAdd:J

.field dateModify:J

.field displayName:Ljava/lang/String;

.field duration:J

.field height:J

.field mimeType:Ljava/lang/String;

.field orientation:I

.field path:Ljava/lang/String;

.field size:J

.field uri:Landroid/net/Uri;

.field width:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLjava/lang/String;IIJIJ)V
    .registers 16

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->mimeType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->path:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->uri:Landroid/net/Uri;

    .line 38
    iput-wide p4, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateAdd:J

    .line 39
    iput-wide p6, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateModify:J

    .line 40
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->displayName:Ljava/lang/String;

    int-to-long p1, p9

    .line 41
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->width:J

    int-to-long p1, p10

    .line 42
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->height:J

    .line 43
    iput-wide p11, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->duration:J

    .line 44
    iput p13, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->orientation:I

    .line 45
    iput-wide p14, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->size:J

    return-void
.end method


# virtual methods
.method public getDateAdd()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateAdd:J

    return-wide v0
.end method

.method public getDateModify()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateModify:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->duration:J

    return-wide v0
.end method

.method public getHeight()J
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->height:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->orientation:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->size:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getWidth()J
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->width:J

    return-wide v0
.end method

.method public isImage()Z
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->mimeType:Ljava/lang/String;

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideo()Z
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->mimeType:Ljava/lang/String;

    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDateAdd(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateAdd:J

    return-void
.end method

.method public setDateModify(J)V
    .registers 3

    .line 93
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->dateModify:J

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 125
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->duration:J

    return-void
.end method

.method public setHeight(J)V
    .registers 3

    .line 117
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->height:J

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 133
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->orientation:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 101
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->size:J

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setWidth(J)V
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/MediaData;->width:J

    return-void
.end method
