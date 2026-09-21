.class Lcom/transsion/camera/manager/ThumbnailLoader$Media;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateAdded:J

.field public final dateModified:J

.field public final dateTaken:J

.field public final filePath:Ljava/lang/String;

.field public final id:J

.field public final mediaType:I

.field public final orientation:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V
    .registers 13

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    .line 80
    iput p3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->orientation:I

    .line 81
    iput-wide p4, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateTaken:J

    .line 82
    iput-wide p6, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    .line 83
    iput-wide p8, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateAdded:J

    .line 84
    iput-object p10, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 85
    iput p11, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->mediaType:I

    .line 86
    iput-object p12, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/transsion/camera/manager/ThumbnailLoader$Media;)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 107
    :cond_4
    iget-wide v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateTaken:J

    iget-wide v2, p1, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateTaken:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 108
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 110
    :cond_11
    iget-wide v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    iget-wide v2, p1, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    .line 111
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 113
    :cond_1e
    iget-wide v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    iget-wide p0, p1, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 67
    check-cast p1, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->compareTo(Lcom/transsion/camera/manager/ThumbnailLoader$Media;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateModified="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dateAdded="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateAdded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dateTaken="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->dateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
